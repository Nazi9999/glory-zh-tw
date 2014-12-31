# == Schema Information
#
# Table name: replies
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  post_id       :integer
#  content       :string(255)
#  like_count    :integer
#  dislike_count :integer
#  created_at    :datetime
#  updated_at    :datetime
#

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
