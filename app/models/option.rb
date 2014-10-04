class Option < ActiveRecord::Base
  has_many :questions, through: :question_option_memberships
  has_many :debtors, foreign_key: :option_id , class_name: "QuestionOptionMembership"
end
