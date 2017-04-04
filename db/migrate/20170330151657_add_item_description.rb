class AddItemDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :item_inventories, :notes, :text 
  end
end
