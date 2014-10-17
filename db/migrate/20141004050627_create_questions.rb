class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.integer :dic_id
      t.string :q_type
      t.string :ans
      t.integer :q_class
      t.integer :q_item
      t.string :note
      t.timestamps
    end
  end
end
