# == Schema Information
#
# Table name: dictionaries
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  six_id     :integer
#  six_cat_id :integer
#  component  :string(255)
#  meaning    :text
#  term       :string(255)
#  dicflash   :string(255)
#  flash      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dictionary do
    word "MyString"
    six_id 1
    six_cat_id 1
    component "MyString"
    meaning "MyText"
    term "MyString"
    dicflash "MyString"
    flash "MyString"
  end
end
