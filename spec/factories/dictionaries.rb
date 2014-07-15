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
