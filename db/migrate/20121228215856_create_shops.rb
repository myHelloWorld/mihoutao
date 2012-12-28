class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      t.string :comment

      t.timestamps
    end
  end
end
