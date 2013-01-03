class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :ContactType
      t.string :ContactValue

      t.timestamps
    end
  end
end
