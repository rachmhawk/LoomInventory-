class Item < ApplicationRecord
  belongs_to :product
  belongs_to :fabric
  has_many :item_inventories

  accepts_nested_attributes_for :product, reject_if: lambda {|attributes| attributes['name'].blank? || attributes['sku'].blank?}
  accepts_nested_attributes_for :fabric, reject_if: lambda {|attributes| attributes['name'].blank? || attributes['sku'].blank?}

  def to_s
    return "#{self.product} - #{self.fabric}"
  end

  def name
    self.to_s
  end

  def self.search(search)
    results=Fabric.search(search)
    results+=Product.search(search)
    results.map(&:items).flatten
  end

  # def product_attributes=(attributes)
  #   self.build_product(attributes)
  # end
end
