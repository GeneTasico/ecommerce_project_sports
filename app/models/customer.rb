class Customer < ApplicationRecord

  # Validations
  validates :customer_name, presence: true, length: { maximum: 50 }
end
