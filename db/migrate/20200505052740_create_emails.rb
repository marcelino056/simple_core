class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.references :entity, null: false, foreign_key: true
      t.string :email
      t.string :aasm_state
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
