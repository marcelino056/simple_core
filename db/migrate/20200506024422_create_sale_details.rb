class CreateSaleDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_details do |t|
      t.references :sale, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.float :quantity
      t.references :product_price, null: false, foreign_key: true
      t.string :aasm_state
      t.datetime :deleted_at
      t.datetime :returned_at
      t.datetime :delivered_at

      t.timestamps
    end
  end
end
