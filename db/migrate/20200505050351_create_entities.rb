class CreateEntities < ActiveRecord::Migration[6.0]
  def change
    create_table :entities do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :aasm_state
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
