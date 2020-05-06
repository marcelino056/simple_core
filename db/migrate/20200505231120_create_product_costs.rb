class CreateProductCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_costs do |t|
      t.references :product, null: false, foreign_key: true
      t.float :amount
      t.datetime :deleted_at
      t.string :aasm_state
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
