class Category < ApplicationRecord

  # Validations
  validates :name, presence: true, length: { maximum: 20 }
end
