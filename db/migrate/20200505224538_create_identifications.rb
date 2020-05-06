class CreateIdentifications < ActiveRecord::Migration[6.0]
  def change
    create_table :identifications do |t|
      t.integer :category
      t.string :value
      t.string :aasm_state
      t.datetime :deleted_at
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
