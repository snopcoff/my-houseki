class ChangeConstraintUser < ActiveRecord::Migration
  def change
    change_column_null :users, :address, true
    change_column_null :users, :hobbies, true
  end
end
