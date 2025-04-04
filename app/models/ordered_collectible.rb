class OrderedCollectible < ApplicationRecord
  belongs_to :order_item
  belongs_to :collectible
end
