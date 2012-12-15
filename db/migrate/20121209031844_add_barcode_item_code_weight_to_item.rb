class AddBarcodeItemCodeWeightToItem < ActiveRecord::Migration
  def change
    add_column :items, :barcode, :string
    add_column :items, :itemCode, :string
    add_column :items, :weight, :decimal
  end
end
