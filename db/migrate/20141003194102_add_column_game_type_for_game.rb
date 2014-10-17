class AddColumnGameTypeForGame < ActiveRecord::Migration
  def change
    add_column :games, :game_type, :string, :after => :dic_id
  end
end
