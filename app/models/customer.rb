class Customer < ApplicationRecord
  has_many :orders

  # Validations
  validates :customer_name, presence: true, length: { maximum: 50 }
end
