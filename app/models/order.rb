class Order < ApplicationRecord
  belongs_to :customer

  # Validations
  validates :total_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :order_date, presence: true
  validates :status, presence: true, length: { maximum: 20 }
  validates :tax, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :customer_id, presence: true
end
