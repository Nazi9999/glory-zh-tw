class QuestionOptionMembership < ActiveRecord::Base
  belongs_to :question, foreign_key: :question_id
  belongs_to :option, foreign_key: :option_id
  attr_accessor :option_class
  validates_presence_of :option_id, :question_id
end
