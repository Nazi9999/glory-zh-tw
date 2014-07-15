class Creation < ActiveRecord::Base
  belongs_to :artist, :foreign_key => :creator_id
end
