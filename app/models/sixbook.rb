class Sixbook < ActiveRecord::Base
  belongs_to :sixbook_category, :foreign_key => :six_cat_id
  belongs_to :dictionary, :foreign_key => :dic_id
  delegate :category_name, :to => :sixbook_category, :allow_nil => true

  mount_uploader :file, SixbookFileUploader
end
