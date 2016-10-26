class AddReviewToFooddrink < ActiveRecord::Migration
  def change
    add_column :fooddrinks, :review, :text
  end
end
