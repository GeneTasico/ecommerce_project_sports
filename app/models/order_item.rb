class OrderItem < ApplicationRecord
  belongs_to :order

  # Many-to-many relationship to Collectibles
  has_many :collectibles
  has_many :collectibles, through: :ordered_collectibles
  
  # Validations
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :subtotal, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :order_id, presence: true
end
