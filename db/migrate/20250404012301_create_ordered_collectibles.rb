class CreateOrderedCollectibles < ActiveRecord::Migration[8.0]
  def change
    create_table :ordered_collectibles do |t|
      t.references :order_item, null: false, foreign_key: true
      t.references :collectible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
