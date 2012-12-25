class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :index
      t.boolean :isProfile
      t.references :item

      t.timestamps
    end
    add_index :attachments, :item_id
  end
end
