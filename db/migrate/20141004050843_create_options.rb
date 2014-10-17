class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :content
      t.integer :o_class
      t.integer :o_item
      t.string :note
      t.timestamps
    end
  end
end
