class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :location_id
      t.text :description

      t.timestamps
    end
  end
end
