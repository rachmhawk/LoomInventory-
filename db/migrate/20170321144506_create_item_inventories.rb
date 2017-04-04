class CreateItemInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :item_inventories do |t|
      t.references :item, foreign_key: true
      t.datetime :purchased_at

      t.timestamps
    end
  end
end
