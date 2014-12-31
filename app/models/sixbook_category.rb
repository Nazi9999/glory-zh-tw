# == Schema Information
#
# Table name: sixbook_categorys
#
#  id            :integer          not null, primary key
#  category_name :string(255)
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

class SixbookCategory < ActiveRecord::Base
  self.table_name = "sixbook_categorys"
  has_many :sixbooks, :foreign_key => :six_cat_id
  has_many :dictionarys, :foreign_key => :six_cat_id
end
