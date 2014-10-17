class Admin::UsersController < Admin::BaseController
  before_filter :find_user, except: [:index, :new]
  before_filter except: :index do
    add_crumb "管理者列表", admin_users_path
  end

  def index
    add_crumb "管理者列表", "#"
    @users = User.all.page(params[:page]).per(15)
    render 'users/index'
  end

  def new
    add_crumb "新增管理者", "#"
    @user = User.new
    render 'users/new'
  end

  def create
    if @user.save
      redirect_to admin_users_path, flash: { success: "新增管理者成功！" }
    else
      render "new", flash: { error: @user.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯管理者 #{@user.name}", "#"
    render 'users/edit'
  end

  def update
    if @user.update_attributes(permitted_params.user)
      redirect_to admin_users_path, flash: { success: "編輯管理者 #{@user.name} 成功！" }
    else
      render "edit", flash: { error: @user.errors.full_messages }
    end
  end

  def destroy
    if @user.destroy
      redirect_to admin_users_path, flash: { success: "刪除管理者 #{@user.name} 成功！" }
    else
      redirect_to admin_users_path, flash: { error: @user.errors.full_messages }
    end
  end

  protected

  def find_user
    @user = params[:id] ? User.find(params[:id]) : User.new(permitted_params.user)
  end  
end
