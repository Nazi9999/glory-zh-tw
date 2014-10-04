class Question < ActiveRecord::Base
  has_many :options, through: :question_option_memberships
  has_many :question_option_memberships, foreign_key: :question_id
end
