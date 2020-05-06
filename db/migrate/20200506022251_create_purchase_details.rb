class CreatePurchaseDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_details do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.float :quantity
      t.float :cost
      t.datetime :deleted_at
      t.string :aasm_state
      t.datetime :returned_at
      t.datetime :received_at

      t.timestamps
    end
  end
end
