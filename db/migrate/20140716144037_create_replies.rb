class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :content
      t.integer :like_count
      t.integer :dislike_count

      t.timestamps
    end
  end
end
