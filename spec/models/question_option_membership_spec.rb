# == Schema Information
#
# Table name: question_option_memberships
#
#  id          :integer          not null, primary key
#  question_id :integer
#  option_id   :integer
#  code        :string(255)
#  is_correct  :boolean
#  note        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe QuestionOptionMembership, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
