# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_11_234329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alcohols", force: :cascade do |t|
    t.text "kind", null: false
    t.float "frequency", null: false
    t.bigint "quantity", null: false
    t.float "number", null: false
    t.bigint "drinking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drinking_id"], name: "index_alcohols_on_drinking_id"
  end

  create_table "drinkings", force: :cascade do |t|
    t.bigint "status", null: false
    t.datetime "driving_start_time", null: false
    t.datetime "drinking_end_time", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_drinkings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false, null: false
    t.float "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visuallies", force: :cascade do |t|
    t.bigint "visually", null: false
    t.bigint "drinking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drinking_id"], name: "index_visuallies_on_drinking_id"
  end

end
