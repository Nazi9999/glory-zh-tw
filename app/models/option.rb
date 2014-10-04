class Option < ActiveRecord::Base
  has_many :questions, through: :question_option_memberships
  has_many :question_option_memberships, foreign_key: :option_id
  scope :newest, lambda{ order("id DESC") }
  scope :category, lambda { |a| where(:o_class => a) }
  validates_presence_of :content, :o_class

  OPTION_CLASS_LABEL = ["六書", "文人作品", "不分類"]  
  OPTION_CLASS_VALUE = [1,2,99]
  OPTION_CLASS_COLLECTION = OPTION_CLASS_LABEL.zip(OPTION_CLASS_VALUE)
  OPTION_CLASS_HASH = OPTION_CLASS_COLLECTION.
  reduce({}) do |result, array|
    result[array.last] = array.first
    result
  end
end
