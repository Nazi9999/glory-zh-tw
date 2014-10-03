class Admin::ArtistsController < Admin::BaseController
  before_filter :find_artist, :except => [:index, :new]
  before_filter :excpet => :index do
    add_crumb "文人列表", admin_artists_path
  end

  def index
    add_crumb "文人列表", "#"
    @artists = Artist.newest.page(params[:page]).per(15)
  end

  def new
    add_crumb "新增文人", "#"
    @artist =Artist.new
  end

  def create
    if @artist.save
      redirect_to admin_artists_path, flash: { success: "新增文人成功！" }
    else
      render :new, flash: { error: @artist.errors.full_messages }
    end
  end

  def edit
    add_crumb "編輯文人#{@artist.name}", "#"
  end

  def update
    if @artist.update_attributes(permitted_params.artist)
      redirect_to admin_artists_path, flash: { success: "編輯文人#{@artist.name}成功！" }
    else
      render :edit, flash: { error: @artist.errors.full_messages }
    end
  end

  def destroy
    if @artist.destroy
      redirect_to admin_artists_path, flash: { success: "刪除文人#{@artist.name}成功！" }
    else
      redirect_to admin_artists_path, flash: { error: "請確認#{@artist.name}是否還有文人作品！" }
    end
  end

  private

  def find_artist
    @artist = params[:id] ? Artist.find(params[:id]) : Artist.new(permitted_params.artist)
  end
end
