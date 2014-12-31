# == Schema Information
#
# Table name: user_roles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  role_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class UserRole < ActiveRecord::Base
  belongs_to :user, :foreign_key => :user_id
  belongs_to :role, :foreign_key => :role_id
end
