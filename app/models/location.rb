class Location < ActiveRecord::Base
  has_many :artists, :foreign_key => :location_id
end
