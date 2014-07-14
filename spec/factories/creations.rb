# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :creation do
    name "MyString"
    content "MyText"
    creator_id 1
    file "MyString"
  end
end
