class RenameModelSixbookCategortToSixbookCategory < ActiveRecord::Migration
  def change
    rename_table :sixbook_categorts, :sixbook_categorys
  end
end
