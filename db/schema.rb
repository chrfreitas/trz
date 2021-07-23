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

ActiveRecord::Schema.define(version: 2021_07_23_202642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.bigint "survivors_id"
    t.bigint "items_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["items_id"], name: "index_inventories_on_items_id"
    t.index ["survivors_id"], name: "index_inventories_on_survivors_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.integer "points", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "survivors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "last_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender", null: false
  end

  add_foreign_key "inventories", "items", column: "items_id"
  add_foreign_key "inventories", "survivors", column: "survivors_id"
end
