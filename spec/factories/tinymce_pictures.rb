# == Schema Information
#
# Table name: tinymce_pictures
#
#  id         :integer          not null, primary key
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tinymce_picture do
  end
end
