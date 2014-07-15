class AddColumnDicIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :dic_id, :integer, :after => :id
  end
end
