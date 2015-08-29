class Admin::TinymceAssetsController < Admin::BaseController
  def create
    # Take upload from params[:file] and store it somehow...
    # Optionally also accept params[:hint] and consume if needed
    image = TinymcePicture.create(params.permit(:file))
    render json: {
      image: {
        url: image.file.url
      }
    }, content_type: "text/html"
  end
end
