class AddMinPriceMaxPriceToItem < ActiveRecord::Migration
  def change
    add_column :items, :minPrice, :decimal
    add_column :items, :maxPrice, :decimal
  end
end
