class CreateDrinkings < ActiveRecord::Migration[6.0]
  def change
    create_table :drinkings do |t|
      t.bigint :status, null:false
      t.datetime :driving_start_time, null:false
      t.datetime :drinking_end_time
      t.float :time
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
