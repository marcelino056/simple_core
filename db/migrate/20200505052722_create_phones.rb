class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.references :entity, null: false, foreign_key: true
      t.string :number
      t.string :state
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
