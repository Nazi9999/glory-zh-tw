# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  o_class    :integer
#  o_item     :integer
#  note       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Option, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
