class CreateGameOlds < ActiveRecord::Migration
  def change
    create_table :game_olds do |t|

      t.timestamps
    end
  end
end
