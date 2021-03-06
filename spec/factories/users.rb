# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  email                  :string(255)      default(""), not null
#  age                    :integer
#  sex                    :boolean
#  birth                  :date
#  description            :text
#  location               :string(255)
#  is_super_user          :boolean
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@commandp.me" }
    password 'password'
    password_confirmation 'password'
    name 'User Name'
  end
end
