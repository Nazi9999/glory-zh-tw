# == Schema Information
#
# Table name: creations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  content     :text
#  creator_id  :integer
#  description :text
#  file        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Creation do
  pending "add some examples to (or delete) #{__FILE__}"
end
