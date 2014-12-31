# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  dic_id     :integer
#  game_type  :string(255)
#  name       :string(255)
#  about      :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
  belongs_to :dictionary, :foreign_key => :dic_id
  validates_presence_of :dic_id, :file
  delegate :word, to: :dictionary, prefix: false
  mount_uploader :file, DictionaryGameUploader
  GAME_TYPE = ["九宮格拼圖", "超級比一比", "其他"]

  after_save :check_game_type

  protected

  def check_game_type
    update_column :game_type, nil unless file?
  end
end
