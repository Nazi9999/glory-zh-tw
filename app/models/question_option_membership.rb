class QuestionOptionMembership < ActiveRecord::Base
  belongs_to :questions, foreign_key: :question_id
  belongs_to :options, foreign_key: :option_id
end
