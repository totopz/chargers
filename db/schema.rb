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

ActiveRecord::Schema[8.0].define(version: 2025_04_29_060644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "chargers", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_chargers_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plug_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plugs", force: :cascade do |t|
    t.bigint "charger_id", null: false
    t.bigint "plug_type_id", null: false
    t.boolean "is_dc"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charger_id"], name: "index_plugs_on_charger_id"
    t.index ["plug_type_id"], name: "index_plugs_on_plug_type_id"
  end

  add_foreign_key "chargers", "locations"
  add_foreign_key "plugs", "chargers"
  add_foreign_key "plugs", "plug_types"
end
