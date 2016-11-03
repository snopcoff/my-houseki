class AddAvgAndQtyToFooddrink < ActiveRecord::Migration
  def change
    add_column :fooddrinks, :avg, :float, default: 0.0
    add_column :fooddrinks, :qty, :integer, default: 0
  end
end
