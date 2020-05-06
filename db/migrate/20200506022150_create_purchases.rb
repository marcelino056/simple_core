class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.datetime :requested_at
      t.date :estimate_date_arribe
      t.references :payment_method, null: false, foreign_key: true
      t.references :entity, null: false, foreign_key: true
      t.string :comments
      t.datetime :deleted_at
      t.string :aasm_state

      t.timestamps
    end
  end
end
