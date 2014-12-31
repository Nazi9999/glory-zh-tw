# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location_id :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Artist < ActiveRecord::Base
  belongs_to :location, :foreign_key => :location_id
  has_many :creations, :foreign_key => :creator_id
  validates_presence_of :name, :location_id
  delegate :name,  :to => :location, :prefix => true
  scope :newest, lambda{ order("id DESC") }

  before_destroy :can_destroy?

  protected

  def can_destroy?
    self.creations.size == 0
  end
end
