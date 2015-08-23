class AddOwnerToCkeditorAssets < ActiveRecord::Migration
  def change
    add_column :ckeditor_assets, :owner_type, :string
    add_column :ckeditor_assets, :owner_id, :integer
    add_index :ckeditor_assets, [:owner_type, :owner_id]
  end
end
