# == Schema Information
#
# Table name: creations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  content     :text
#  creator_id  :integer
#  description :text
#  file        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :creation do
    name "MyString"
    content "MyText"
    creator_id 1
    file "MyString"
  end
end
