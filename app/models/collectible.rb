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
end
