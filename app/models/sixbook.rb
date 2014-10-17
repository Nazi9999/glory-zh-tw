class Sixbook < ActiveRecord::Base
  belongs_to :sixbook_category, :foreign_key => :six_cat_id
  belongs_to :dictionary, :foreign_key => :dic_id
  delegate :category_name, :to => :sixbook_category, :allow_nil => true

  validates_presence_of :word, :six_cat_id

  mount_uploader :file, SixbookFileUploader
  mount_uploader :image, SixbookImageUploader

  scope :newest, lambda{ order("id DESC") }
end
