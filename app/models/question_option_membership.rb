class QuestionOptionMembership < ActiveRecord::Base
  belongs_to :question, foreign_key: :question_id
  belongs_to :option, foreign_key: :option_id
  attr_accessor :option_class
  validates_presence_of :option_id, :question_id

  after_create :check_option_code
  # validate :check_duplicated_code, associated: true

  protected

  def check_option_code
    if self.code.nil? && self.option.option_code.present?
      update_column :code, self.option.option_code
      self.option.option_code = nil
    end
  end

  # def check_duplicated_code
  #   errors.add(:base, "選項代號不可重複！") if self.question.members.map(&:code).include?(self.code)
  # end
end
