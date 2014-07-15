class Game < ActiveRecord::Base
  belongs_to :dictionary, :foreign_key => :dic_id
end
