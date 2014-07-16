# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    user_id 1
    content "MyText"
    like_count 1
    dislike_count 1
    file "MyString"
  end
end
