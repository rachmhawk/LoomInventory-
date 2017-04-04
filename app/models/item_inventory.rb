class ItemInventory < ApplicationRecord
  belongs_to :item
  has_one :product, through: :item
  has_one :fabric, through: :item

  attr_accessor :product_id, :fabric_id
end
