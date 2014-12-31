# == Schema Information
#
# Table name: dictionaries
#
#  id         :integer          not null, primary key
#  word       :string(255)
#  six_id     :integer
#  six_cat_id :integer
#  component  :string(255)
#  meaning    :text
#  term       :string(255)
#  dicflash   :string(255)
#  flash      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Dictionary do
  pending "add some examples to (or delete) #{__FILE__}"
end
