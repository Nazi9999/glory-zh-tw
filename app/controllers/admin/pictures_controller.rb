class Admin::PicturesController < Ckeditor::PicturesController
  skip_before_action :find_asset
  skip_before_action :ckeditor_authorize!
  skip_before_action :authorize_resource

  def index
  #   @pictures = Ckeditor::Paginatable.new(pictures).page(params[:page])
  # respond_with(@pictures,layout: @pictures.first_page?)
    @pictures = pictures.page(params[:page])
    respond_with(@pictures, layout: @pictures.first_page?)
  end

  def create
    @picture =  if owner
                  Ckeditor::Picture.new(owner: owner)
                else
                  Ckeditor::Picture.new
                end
    respond_with_asset(@picture)
  end

  def destroy
    @picture ||= pictures.find(params[:id])
    @picture.destroy
    respond_with(@picture, :location => pictures_path)
  end

  private

  def pictures
    @pictures ||= if owner
                    Ckeditor::Picture.by_owner(owner)
                  else
                    Ckeditor::Picture.orphan
                  end 
  end

  def owner
    @owner ||= if owner?
                 params[:owner_type].singularize.classify.constantize.find(params[:owner_id])
               else
                 nil
               end
  end

  def owner?
    params[:owner_type].present? && params[:owner_id].present?
  end
end
