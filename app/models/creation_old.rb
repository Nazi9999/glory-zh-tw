class CreationOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "creation"
  self.primary_key = "creationid"
end
