class Question < ActiveRecord::Base
  has_many :options, through: :question_option_memberships
  has_many :question_option_memberships, foreign_key: :question_id
  scope :newest, lambda { order("id DESC") }
  belongs_to :dictionary, foreign_key: :dic_id
  delegate :word, to: :dictionary, prefix: false, allow_nil: true

  accepts_nested_attributes_for :question_option_memberships, allow_destroy: true

  QUESTION_TYPE = ["單選", "複選"]
  QUESTION_CLASS_LABEL = ["六書", "文人作品"]  
  QUESTION_CLASS_VALUE = [1,2]
  QUESTION_CLASS_COLLECTION = QUESTION_CLASS_LABEL.zip(QUESTION_CLASS_VALUE)
  QUESTION_CLASS_HASH = QUESTION_CLASS_COLLECTION.
  reduce({}) do |result, array|
    result[array.last] = array.first
    result
  end

end
