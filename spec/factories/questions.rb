# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :text
#  dic_id     :integer
#  q_type     :string(255)
#  ans        :string(255)
#  q_class    :integer
#  q_item     :integer
#  note       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
  end
end
