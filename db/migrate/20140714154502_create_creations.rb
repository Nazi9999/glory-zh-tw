class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.string :name
      t.text :content
      t.integer :creator_id
      t.string :file

      t.timestamps
    end
  end
end
