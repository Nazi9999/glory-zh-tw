class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, :foreign_key => :user_id
  has_many :replies, :foreign_key => :user_id
  has_many :roles, :through => :user_roles
  has_many :user_roles, :foreign_key => :user_id
end
