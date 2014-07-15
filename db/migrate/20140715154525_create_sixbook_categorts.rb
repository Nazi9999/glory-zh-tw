class CreateSixbookCategorts < ActiveRecord::Migration
  def change
    create_table :sixbook_categorts do |t|
      t.string :category_name
      t.text :description

      t.timestamps
    end
  end
end
