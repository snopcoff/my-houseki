class AddPriceToFooddrink < ActiveRecord::Migration
  def change
    add_column :fooddrinks, :price, :decimal, :precision => 8, :scale => 2, default: 0
    add_column :fooddrinks, :price_unit, :string, default: "vnd"
  end
end
