class SixbookCategoryOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "sixtest"
  self.primary_key = "sixcat"
end
