class Collectible < ApplicationRecord
  belongs_to :category

  # Many-to-many relationship to OrderItem
  has_many :order_items
  has_many :orders_items, through: :ordered_collectibles

  # Validations
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category_id, presence: true

  # Allows searchable attributes for Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "name", "price", "stock_quantity", "updated_at"]
  end

  # Allows searchable associations for Ransack
  def self.ransackable_associations(auth_object = nil)
    ["category", "order_items", "orders_items"]
  end
end
