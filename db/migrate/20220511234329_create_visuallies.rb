class CreateVisuallies < ActiveRecord::Migration[6.0]
  def change
    create_table :visuallies do |t|
      t.bigint :visually, null: false, default: 0
      t.bigint :drinking_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
