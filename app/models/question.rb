class Question < ActiveRecord::Base
  has_many :options, through: :members
  has_many :members, foreign_key: :question_id, class_name: "QuestionOptionMembership"
  scope :newest, lambda { order("id DESC") }
  belongs_to :dictionary, foreign_key: :dic_id
  delegate :word, to: :dictionary, prefix: false, allow_nil: true
  serialize :ans, Array

  accepts_nested_attributes_for :members, allow_destroy: true
  accepts_nested_attributes_for :options
  validates_presence_of :q_type, :q_class, :text

  after_save :check_answer


  QUESTION_TYPE = ["單選", "複選"]
  QUESTION_CLASS_LABEL = ["六書", "文人作品"]  
  QUESTION_CLASS_VALUE = [1,2]
  QUESTION_CLASS_COLLECTION = QUESTION_CLASS_LABEL.zip(QUESTION_CLASS_VALUE)
  QUESTION_CLASS_HASH = QUESTION_CLASS_COLLECTION.
  reduce({}) do |result, array|
    result[array.last] = array.first
    result
  end

  protected

  def check_answer
    answer = self.members.
    reduce([]) do |result, member|
      result << member.code if member.is_correct
      result
    end
    self.update_column :ans, answer
  end

end
