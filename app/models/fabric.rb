class Fabric < ApplicationRecord
  has_many :items
  has_many :item_inventories, through: :items

  def to_s
    self.name
  end

  def self.search(search)
    where("name LIKE ? OR sku LIKE ?", "%#{search}%", "%#{search}%")
  end
end
