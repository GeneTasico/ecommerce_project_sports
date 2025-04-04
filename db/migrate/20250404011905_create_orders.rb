class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.decimal :total_amount
      t.datetime :order_date
      t.string :status
      t.decimal :tax
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
