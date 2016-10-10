class AddUserInformation < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, default: ""
    add_column :users, :gender, :boolean, default: true
    add_column :users, :address, :string, default: ""
    add_column :users, :hobbies, :text, default: ""
  end
end
