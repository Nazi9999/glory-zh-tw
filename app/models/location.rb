# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
  has_many :artists, :foreign_key => :location_id
  validates_presence_of :name
  scope :newest, lambda{ order("id DESC") }
end
