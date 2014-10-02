class Admin::LocationsController < Admin::BaseController
  before_filter :find_location, except: [ :index, :new ]
  before_filter :except => [:index] do
    add_crumb "地點列表", admin_locations_path
  end

  def index
    add_crumb "地點列表", "#"
    @locations = Location.newest.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增地點", "#"
    @location = Location.new
  end

  def create
    if @location.save
      redirect_to admin_locations_path, flash: { success: "新增地點成功！" }
    else
      render :new, flash: { error: @location.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯地點 #{@location.name}", "#"
  end

  def update
    if @location.update_attributes(permitted_params.location)
      redirect_to admin_locations_path, flash: { success: "編輯地點#{@location.name}成功！"}
    else
      render :edit, flash: { error: @location.errors.full_messages } 
    end
  end

  def destroy
    if @location.destroy
      redirect_to admin_locations_path, flash: { success: "刪除#{@location.name}成功！" }
    else
      redirect_to admin_locations_path, flash: { error: @location.errors.full_messages }
    end
  end

  private

  def find_location
    @location = params[:id] ? Location.find(params[:id]) : Location.new(permitted_params.location)
  end
end
