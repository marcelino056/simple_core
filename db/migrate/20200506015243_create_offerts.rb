class CreateOfferts < ActiveRecord::Migration[6.0]
  def change
    create_table :offerts do |t|
      t.string :title
      t.date :starting_at
      t.date :ending_at
      t.integer :offert_type
      t.string :value
      t.string :condition
      t.datetime :deleted_at
      t.string :aasm_state
      t.string :description

      t.timestamps
    end
  end
end
