# == Schema Information
#
# Table name: replies
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  post_id       :integer
#  content       :string(255)
#  like_count    :integer
#  dislike_count :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'spec_helper'

describe Reply do
  pending "add some examples to (or delete) #{__FILE__}"
end
