# == Schema Information
#
# Table name: creations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  content     :text
#  creator_id  :integer
#  description :text
#  file        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Creation < ActiveRecord::Base
  belongs_to :artist, :foreign_key => :creator_id
  validates_presence_of :name, :creator_id
  delegate :name, to: :artist, prefix: true
end
