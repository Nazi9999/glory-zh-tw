# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  disabled    :boolean          default(FALSE)
#  created_at  :datetime
#  updated_at  :datetime
#

class Role < ActiveRecord::Base
  has_many :users, :through => :user_roles
  has_many :user_roles, :foreign_key => :role_id
end
