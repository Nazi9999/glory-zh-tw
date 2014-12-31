# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  dic_id     :integer
#  game_type  :string(255)
#  name       :string(255)
#  about      :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Game do
  pending "add some examples to (or delete) #{__FILE__}"
end
