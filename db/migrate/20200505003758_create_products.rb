class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.references :product_category, null: false, foreign_key: true
      t.datetime :deleted_at
      t.boolean :allow_with_out_stock
      t.string :state

      t.timestamps
    end
  end
end
