class Game < ActiveRecord::Base
  belongs_to :dictionary, :foreign_key => :dic_id
  validates_presence_of :word, :dic_id, :file
  delegate :word, to: :dictionary, prefix: false
end
