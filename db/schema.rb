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

ActiveRecord::Schema.define(version: 2019_11_10_125708) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "category"
    t.integer "YJ_code"
    t.string "ingredients"
    t.string "standard"
    t.string "Kyokuhou"
    t.string "narcotic"
    t.string "other"
    t.string "name"
    t.string "company"
    t.string "generic"
    t.string "original"
    t.string "same_generic"
    t.decimal "price", precision: 15, scale: 2
    t.string "transitional_time_limit"
    t.string "spare"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
