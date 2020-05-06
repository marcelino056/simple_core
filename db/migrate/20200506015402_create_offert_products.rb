class CreateOffertProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :offert_products do |t|
      t.references :offert, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.float :price_per_unit
      t.float :unit_amount
      t.datetime :deleted_at
      t.string :aasm_state

      t.timestamps
    end
  end
end
