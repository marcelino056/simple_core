class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :payment_method, null: false, foreign_key: true
      t.references :entity, null: false, foreign_key: true
      t.datetime :delivered_at
      t.datetime :requested_at
      t.string :aasm_state
      t.datetime :deleted_at
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
