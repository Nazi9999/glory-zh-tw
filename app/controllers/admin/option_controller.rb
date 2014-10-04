class Admin::OptionController < Admin::BaseController
  before_filter :find_option, except: [:index, :new]
  before_filter except: :index do
    add_crumb "題目選項列表", admin_options_path
  end

  def index
    add_crumb "題目選項列表", "#"
    @options = Option.newest.page(params[:page].per(15))
  end

  def new
    add_crumb "新增選項", "#"
    @option = Option.new
  end

  def create
    if @option.save
      redirect_to admin_options_path, flash: { success: "新增選項成功!" }
    else
      render :new, flash: { error: @option.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯選項 No.#{@option.id}"
  end

  def update
    if @option.update_attributes(permitted_params.option)
      redirect_to admin_options_path, flash: { success: "編輯選項 No.#{@option.id} 成功!" }
    else
      render :edit, flash: { error: @option.errors.full_messages }
    end
  end

  def destroy
    if @option.destroy
      redirect_to admin_options_path, flash: { success: "刪除選項 No.#{@option.id} 成功!" }
    else
      redirect_to admin_options_path, flash: { error: @option.errors.full_messages }
    end
  end

  protected

  def find_option
    @option = params[:id] ? Option.find(params[:id]) : Option.new(permitted_params.option)
  end
end
