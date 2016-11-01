class AddFdTypeToFooddrink < ActiveRecord::Migration
  def change
    add_reference :fooddrinks, :fd_type, index: true, foreign_key: true
  end
end
