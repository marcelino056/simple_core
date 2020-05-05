class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :simbol
      t.string :state

      t.timestamps
    end
  end
end
