class Location < ActiveRecord::Base
  has_many :artists, :foreign_key => :location_id
  validates_presence_of :name
  scope :newest, lambda{ order("id DESC") }
end
