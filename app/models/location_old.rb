class LocationOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "location"
  self.primary_key = "locationid"

end
