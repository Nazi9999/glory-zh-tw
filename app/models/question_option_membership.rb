class QuestionOptionMembership < ActiveRecord::Base
  belongs_to :question, foreign_key: :question_id
  belongs_to :option, foreign_key: :option_id
end
