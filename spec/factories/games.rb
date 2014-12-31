# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  dic_id     :integer
#  game_type  :string(255)
#  name       :string(255)
#  about      :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    name "MyString"
    about "MyString"
    file "MyString"
  end
end
