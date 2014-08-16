class Artist < ActiveRecord::Base
  belongs_to :location, :foreign_key => :location_id
  has_many :creations, :foreign_key => :creator_id

  validates_presence_of :name, :location_id

  delegate :name,  :to => :location, :prefix => true
end
