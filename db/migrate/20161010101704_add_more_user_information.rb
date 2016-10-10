class AddMoreUserInformation < ActiveRecord::Migration
  def change
    add_column :users, :gender, :boolean, default: true
    add_column :users, :hobbies, :text, default: ""
  end
end
