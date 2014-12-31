# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location_id :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name "MyString"
    location_id 1
    description "MyText"
  end
end
