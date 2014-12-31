# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  disabled    :boolean          default(FALSE)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Role do
  pending "add some examples to (or delete) #{__FILE__}"
end
