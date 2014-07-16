class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :content
      t.integer :like_count
      t.integer :dislike_count
      t.string :file

      t.timestamps
    end
  end
end
