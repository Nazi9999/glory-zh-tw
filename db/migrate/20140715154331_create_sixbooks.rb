class CreateSixbooks < ActiveRecord::Migration
  def change
    create_table :sixbooks do |t|
      t.string :word
      t.integer :dic_id
      t.integer :six_cat_id
      t.string :meaning
      t.string :image
      t.string :avatar
      t.string :file

      t.timestamps
    end
  end
end
