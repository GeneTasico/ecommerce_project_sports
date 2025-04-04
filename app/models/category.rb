class Category < ApplicationRecord
  has_many :collectibles

  # Validations
  validates :name, presence: true, length: { maximum: 20 }
end
