# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_10_012653) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flavors", force: :cascade do |t|
    t.string "flavor_name"
    t.boolean "vegan"
    t.integer "grams_sugar"
    t.bigint "ice_cream_shop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ice_cream_shop_id"], name: "index_flavors_on_ice_cream_shop_id"
  end

  create_table "ice_cream_shops", force: :cascade do |t|
    t.string "name"
    t.boolean "open_24_hrs"
    t.integer "num_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flavors", "ice_cream_shops"
end
