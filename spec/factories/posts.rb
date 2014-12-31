# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  content       :text
#  like_count    :integer
#  dislike_count :integer
#  file          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

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
