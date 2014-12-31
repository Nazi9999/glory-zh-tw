# == Schema Information
#
# Table name: sixbooks
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  dic_id     :integer
#  six_cat_id :integer
#  meaning    :string(255)
#  image      :string(255)
#  avatar     :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sixbook do
    word "MyString"
    dic_id 1
    six_cat_id 1
    meaning "MyString"
    image "MyString"
    avatar "MyString"
    file "MyString"
  end
end
