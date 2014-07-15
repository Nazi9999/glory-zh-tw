class DictionaryOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "dictionary"
  self.primary_key = "dicnumber"
end
