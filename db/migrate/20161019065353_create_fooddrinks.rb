class CreateFooddrinks < ActiveRecord::Migration
  def change
    create_table :fooddrinks do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :file
      t.boolean :foodtype, default: true
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
