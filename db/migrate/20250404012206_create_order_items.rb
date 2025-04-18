class CreateOrderItems < ActiveRecord::Migration[8.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :price
      t.decimal :subtotal
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
