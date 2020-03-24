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

ActiveRecord::Schema.define(version: 2020_03_22_133016) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.decimal "price", precision: 15, scale: 2
    t.integer "change_category"
    t.string "master_type"
    t.integer "pharmaceutical_code"
    t.integer "kanji_significant_digits"
    t.string "kanji_name"
    t.integer "kana_significant_digits"
    t.string "kana_name"
    t.integer "unit_code"
    t.integer "unit_significant_digits"
    t.string "unit_name"
    t.integer "price_type"
    t.integer "spare"
    t.integer "n_p_s_p_drugs"
    t.integer "nerve_destroyer"
    t.integer "biologics"
    t.integer "generic"
    t.integer "spare_2"
    t.integer "dental_drugs"
    t.integer "contrast_agent"
    t.integer "injection_volume"
    t.integer "listing_type"
    t.integer "product_name_relations"
    t.integer "old_price_type"
    t.integer "old_price"
    t.integer "name_change_category"
    t.integer "kana_name_change_category"
    t.integer "dosage_form"
    t.integer "spare_3"
    t.integer "changed_date"
    t.integer "abolition_date"
    t.string "standard_code"
    t.integer "order_number"
    t.integer "expiration_date"
    t.string "standard_name"
  end

end
