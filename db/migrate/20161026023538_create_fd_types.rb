class CreateFdTypes < ActiveRecord::Migration
  def change
    create_table :fd_types do |t|
      t.string :name
      t.string :foodtype

      t.timestamps null: false
    end
  end
end
