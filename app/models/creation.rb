class Creation < ActiveRecord::Base
  belongs_to :artist, :foreign_key => :creator_id
  validates_presence_of :name, :creator_id
  delegate :name, to: :artist, prefix: true
end
