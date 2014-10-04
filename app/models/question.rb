class Question < ActiveRecord::Base
  has_many :options, through: :question_option_memberships
  has_many :members, foreign_key: :question_id, class_name: "QuestionOptionMembership"
end
