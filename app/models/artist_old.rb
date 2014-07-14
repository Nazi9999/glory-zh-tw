class ArtistOld < ActiveRecord::Base
  use_connection_ninja(:traditional_chinese_old)
  self.table_name = "artist"
  self.primary_key = "artistnumber"
end
