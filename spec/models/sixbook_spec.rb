# == Schema Information
#
# Table name: sixbooks
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  dic_id     :integer
#  six_cat_id :integer
#  meaning    :string(255)
#  image      :string(255)
#  avatar     :string(255)
#  file       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Sixbook do
  pending "add some examples to (or delete) #{__FILE__}"
end
