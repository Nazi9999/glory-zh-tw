class Post < ActiveRecord::Base
  belongs_to :user, :foreign_key => :usr_id
  has_many :replies, :foreign_key => :post_id
end
