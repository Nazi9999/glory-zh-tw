# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  content       :text
#  like_count    :integer
#  dislike_count :integer
#  file          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'spec_helper'

describe Post do
  pending "add some examples to (or delete) #{__FILE__}"
end
