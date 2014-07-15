class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.integer :six_id
      t.integer :six_cat_id
      t.string :component
      t.text :meaning
      t.string :term
      t.string :dicflash
      t.string :flash

      t.timestamps
    end
  end
end
