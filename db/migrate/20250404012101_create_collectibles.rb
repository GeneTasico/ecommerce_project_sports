class CreateCollectibles < ActiveRecord::Migration[8.0]
  def change
    create_table :collectibles do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
