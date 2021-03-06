class Admin::SixbooksController < Admin::BaseController
  before_filter :find_sixbook, :except => [ :index, :new ]
  before_filter :except => :index do
    add_crumb "六書列表 ", admin_sixbooks_path
  end

  def index
    add_crumb "六書列表", "#"
    @sixbooks = Sixbook.newest.page(params[:page]).per(15)
  end

  def new 
    add_crumb  "新增六書", "#"
    @sixbook = Sixbook.new
  end

  def create
    if @sixbook.save
      redirect_to admin_sixbooks_path, flash: { success: "新增六書成功！" }
    else
      render :new, flash: { error: @sixbook.errors.full_messages }
    end
  end

  def edit
    add_crumb  "編輯六書 #{@sixbook.word}", "#"
  end

  def update
    if @sixbook.update_attributes(permitted_params.sixbook)
      redirect_to admin_sixbooks_path, flash: { success: "編輯六書成功！"}
    else
      render :edit, flash: { error: @sixbook.errors.full_messages }
    end
  end

  def destroy
    if @sixbook.destroy
      redirect_to admin_sixbooks_path, flash: { success: "刪除六書成功！" }
    else
      redirect_to admin_sixbooks_path, flash: { error: @sixbook.errors.full_messages }
    end
  end

  private

  def find_sixbook
    @sixbook = params[:id] ? Sixbook.find(params[:id]) : Sixbook.new(permitted_params.sixbook)
  end
end
