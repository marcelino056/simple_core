class CreateProductPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :product_prices do |t|
      t.references :product, null: false, foreign_key: true
      t.references :currency, null: false, foreign_key: true
      t.string :aasm_state
      t.decimal :amount

      t.timestamps
    end
  end
end
