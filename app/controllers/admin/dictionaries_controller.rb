class Admin::DictionariesController < Admin::BaseController
  before_filter :find_dictionary, except: [:index, :new]
  before_filter :except => [:index] do
    add_crumb "地點列表", admin_dictionaries_path
  end

  def index
    @search = Dictionary.includes(:sixbook).search(params[:q])
    @dictionaries = @search.result.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增字典字", "#"
    @dictionary = Dictionary.new
  end

  def create
    if @dictionary.save
      redirect_to admin_dictionaries_path, flash: { success: "新增字典字成功！" }
    else
      render :new, flash: { error: @dictionary.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯字典字 #{@dictionary.word}", "#"
  end

  def update
    if @dictionary.update_attributes(permitted_params.dictionary)
      redirect_to admin_dictionaries_path, flash: { success: "編輯字典字 #{@dictionary.word}成功！" }
    else
      render :edit, flash: { error: @dictionary.errors.full_messages }
    end
  end

  def destroy
    if @dictionary.destroy
      redirect_to admin_dictionaries_path, flash: { success: "刪除字典字 #{@dictionary.word}成功!"}
    else
      redirect_to admin_dictionaries_path, flash: { error: "請確認字典字 #{@dictionary.word} 是否還有遊戲未刪！" }
    end
  end

  protected

  def find_dictionary
    @dictionary = params[:id] ? Dictionary.find(params[:id]) : Dictionary.new(permitted_params.dictionary)
  end
end
