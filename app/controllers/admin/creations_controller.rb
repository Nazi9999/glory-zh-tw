class Admin::CreationsController < Admin::BaseController
  before_filter :find_artist
  before_filter :find_creation, except: [:index, :new]
  before_filter except: :index do
    add_crumb "作品列表", admin_artist_creations_path(@artist)
  end

  def index
    add_crumb "作品列表", "#"
    @creations = @artist.creations.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增作品", "#"
    @creation = @artist.creations.build
  end

  def create
    if @creation.save
      redirect_to admin_artist_creations_path(@artist), flash: { success: "新增作品成功！" }
    else
      render :new, flash: { error: @creation.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯作品 #{@creation.name}", "#"
  end

  def update
    if @creation.update_attributes(permitted_params.creation)
      redirect_to admin_artist_creations_path(@artist), flash: { success: "編輯作品 #{@creation.name}成功！" }
    else
      render :edit, flash: { error: @creation.errors.full_messages }
    end
  end

  def destroy
    if @creation.destroy
      redirect_to admin_artist_creations_path(@artist), flash: { success: "刪除作品 #{@creation.name}成功！" }
    else
      redirect_to admin_artist_creations_path(@artist), flash: { error: @creation.errors.full_messages }
    end
  end
  protected

  def find_artist
    @artist = Artist.find(params[:artist_id])
  end

  def find_creation
    @creation = params[:id] ? @artist.creations.find(params[:id]) : @artist.creations.build(permitted_params.creation)
  end

end
