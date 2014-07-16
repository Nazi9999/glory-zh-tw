# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reply do
    user_id 1
    post_id 1
    content "MyString"
    like_count 1
    dislike_count 1
  end
end
