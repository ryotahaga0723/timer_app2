class CreateAlcohols < ActiveRecord::Migration[6.0]
  def change
    create_table :alcohols do |t|
      t.text :kind, null: false
      t.float :frequency, null: false
      t.bigint :quantity, null: false
      t.float :number, null: false
      t.bigint :drinking_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end