class SixbookOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "sixbook"
  self.primary_key = "number"
end
