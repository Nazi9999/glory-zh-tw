class SixbookCategory < ActiveRecord::Base
  self.table_name = "sixbook_categorys"
  has_many :sixbooks, :foreign_key => :six_cat_id
  has_many :dictionarys, :foreign_key => :six_cat_id
end
