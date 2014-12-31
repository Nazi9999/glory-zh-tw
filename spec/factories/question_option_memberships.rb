# == Schema Information
#
# Table name: question_option_memberships
#
#  id          :integer          not null, primary key
#  question_id :integer
#  option_id   :integer
#  code        :string(255)
#  is_correct  :boolean
#  note        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question_option_membership do
  end
end
