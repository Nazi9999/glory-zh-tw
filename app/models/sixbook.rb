# == Schema Information
#
# Table name: sixbooks
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  dic_id     :integer
#  six_cat_id :integer
#  meaning    :string(255)
#  image      :string(255)
#  avatar     :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Sixbook < ActiveRecord::Base
  belongs_to :sixbook_category, :foreign_key => :six_cat_id
  belongs_to :dictionary, :foreign_key => :dic_id
  delegate :category_name, :to => :sixbook_category, :allow_nil => true

  validates_presence_of :word, :six_cat_id

  mount_uploader :file, SixbookFileUploader
  mount_uploader :image, SixbookImageUploader

  scope :newest, lambda{ order("id DESC") }
end
