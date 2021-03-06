# -*- encoding : utf-8 -*-
class YUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  include CarrierWave::Meta


  storage :fog
  # storage :file

  

  process :store_meta


  # Create different versions of your uploaded files:
  version :thumb do
     process :resize_to_fill => [50, 50]
     process :store_meta
  end
  
  version :medinum do 
     process :resize_to_fit => [300, 300]
     process :store_meta
  end
  
  
  version :large do
     process :resize_to_limit => [600,600]
     process :store_meta
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.

  def default_url
     "http://placehold.it/330&text=pic"
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{id_partition(model)}"
  end

  private

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end

  def id_partition(attachment)
    case id = attachment.id
    when Integer
      ("%09d" % id).scan(/\d{3}/).join("/")
    when String
      id.scan(/.{3}/).first(3).join("/")
    else
      nil
    end
  end

end
