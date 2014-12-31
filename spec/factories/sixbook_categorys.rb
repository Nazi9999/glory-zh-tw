# == Schema Information
#
# Table name: sixbook_categorys
#
#  id            :integer          not null, primary key
#  category_name :string(255)
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sixbook_category do
    category_name "MyString"
    description "MyText"
  end
end
