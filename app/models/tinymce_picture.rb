# == Schema Information
#
# Table name: tinymce_pictures
#
#  id         :integer          not null, primary key
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TinymcePicture < ActiveRecord::Base
  mount_uploader :file, TinymcePictureUploader
end
