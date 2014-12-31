# == Schema Information
#
# Table name: dictionaries
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  six_id     :integer
#  six_cat_id :integer
#  component  :string(255)
#  meaning    :text
#  term       :string(255)
#  dicflash   :string(255)
#  flash      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Dictionary < ActiveRecord::Base
  belongs_to :sixbook_category, :foreign_key => :six_cat_id
  has_one :sixbook, :foreign_key => :dic_id
  has_many :games, :foreign_key => :dic_id
  has_many :questions, foreign_key: :dic_id
  scope :newest, lambda{ order("id DESC") }
  validates_presence_of :word, :six_cat_id
  delegate :category_name, to: :sixbook_category, prefix: false, allow_nil: true
  delegate :word, to: :sixbook, prefix: true, allow_nil: true
  mount_uploader :flash, DictionaryWordUploader

  before_destroy :can_destroy?

  protected

  def can_destroy?
    self.games.size == 0
  end
end
