class AddColumnIsCorrectForQuestionOptionShip < ActiveRecord::Migration
  def change
    add_column :question_option_memberships, :is_correct, :boolean, after: :code
  end
end
