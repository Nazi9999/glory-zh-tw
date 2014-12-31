# == Schema Information
#
# Table name: replies
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  post_id       :integer
#  content       :string(255)
#  like_count    :integer
#  dislike_count :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Reply < ActiveRecord::Base
  belongs_to :post, :foreign_key => :post_id
  belongs_to :user, :foreign_key => :user_id
end
