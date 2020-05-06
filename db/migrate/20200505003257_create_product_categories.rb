class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.datetime :deleted_at
      t.string :meta
      t.string :aasm_state

      t.timestamps
    end
  end
end
