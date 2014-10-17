class AddColumnNameAgeSexDescriptionBirthIsSuperUserToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :after => :id
    add_column :users, :age, :integer, :after => :email
    add_column :users, :sex, :boolean, :after => :age
    add_column :users, :birth, :date, :after => :sex
    add_column :users, :description, :text, :after => :birth
    add_column :users, :location, :string, :after => :description
    add_column :users, :is_super_user, :boolean, :after => :location
  end
end
