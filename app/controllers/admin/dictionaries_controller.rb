class Admin::DictionariesController < Admin::BaseController
  before_filter :find_dictionary
  before_filter :except => [:index] do
    add_crumb "地點列表", admin_dictionaries_path
  end

  def index
    @dicionaries = Dictionary.newest.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增字典字", "#"
  end

  def create
    if @dicionary.save
      redirect_to admin_dictionaries_path, flash: { success: "新增字典字成功！" }
    else
      render :new, flash: { error: @dicionary.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯字典字 #{@dicionary.word}", "#"
  end

  def update
    if @dicionary.update_attributes(permitted_params.dicionary)
      redirect_to admin_dictionaries_path, flash: { success: "編輯字典字 #{@dicionary.word}成功！" }
    else
      render :edit, flash: { error: @dicionary.errors.full_messages }
    end
  end

  def destroy
    if @dicionary.destroy
      redirect_to admin_dictionaries_path, flash: { success: "刪除字典字 #{@dicionary.word}成功!"}
    else
      redirect_to admin_dictionaries_path, flash: { error: }
  end

  protected

  def find_dictionary
    @dicionary = params[:id] ? Dictionary.find(params[:id]) : Dictionary.create(permitted_params.dictionary)
  end
end
