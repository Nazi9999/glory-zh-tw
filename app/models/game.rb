class Game < ActiveRecord::Base
  belongs_to :dictionary, :foreign_key => :dic_id
  validates_presence_of :dic_id, :file
  delegate :word, to: :dictionary, prefix: false
  mount_uploader :file, DictionaryGameUploader
end
