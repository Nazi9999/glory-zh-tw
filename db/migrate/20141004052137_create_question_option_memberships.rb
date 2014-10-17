class CreateQuestionOptionMemberships < ActiveRecord::Migration
  def change
    create_table :question_option_memberships do |t|
      t.integer :question_id
      t.integer :option_id
      t.string :code
      t.string :note
      t.timestamps
    end
  end
end
