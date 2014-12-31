# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :text
#  dic_id     :integer
#  q_type     :string(255)
#  ans        :string(255)
#  q_class    :integer
#  q_item     :integer
#  note       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Question, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
