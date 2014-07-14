class AddColumnDescriptionToCreation < ActiveRecord::Migration
  def change
    add_column :creations, :description, :text, :after => :creator_id
  end
end
