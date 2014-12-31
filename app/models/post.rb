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

class Post < ActiveRecord::Base
  belongs_to :user, :foreign_key => :usr_id
  has_many :replies, :foreign_key => :post_id
end
