class Option < ActiveRecord::Base
  has_many :questions, through: :question_option_memberships
  has_many :question_option_memberships, foreign_key: :option_id 
end
