class AddUserInformation < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_index :users, :name, unique: true
  end
end
