class CreateProductProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :product_providers do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
