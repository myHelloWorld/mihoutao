class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :shopCode
      t.string :personFirstName
      t.string :personLastName
      t.string :description
      t.string :phone
      t.string :fax
      t.string :email
      t.string :addressLineOne
      t.string :addressLineTwo
      t.string :addressLineThree
      t.string :city
      t.string :suburb
      t.references :contacts

      t.timestamps
    end
  end
end
