class CreateProductTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :product_transactions do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :tranaction_type
      t.string :aasm_state
      t.datetime :deleted_at
      t.float :amount
      t.references :product_price, null: false, foreign_key: true
      t.references :product_cost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
