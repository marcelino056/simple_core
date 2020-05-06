class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :description
      t.references :sector, null: false, foreign_key: true
      t.string :street
      t.datetime :deleted_at
      t.string :aasm_state
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
