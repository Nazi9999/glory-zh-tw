# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  o_class    :integer
#  o_item     :integer
#  note       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :option do
  end
end
