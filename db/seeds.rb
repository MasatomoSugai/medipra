# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
date = "2019-11-11"
i = 1

CSV.foreach('db/y_ALL20191015.csv') do |info|
  Product.create!(change_category: info[0], master_type: info[1], pharmaceutical_code: info[2], kanji_significant_digits: info[3], name: info[4], kana_significant_digits: info[5], kana_name: info[6], unit_code: info[7], unit_significant_digits: info[8],
    unit_name: info[9],
    price_type: info[10],
    price: info[11],
    spare_1: info[12],
    n_p_s_p_drugs: info[13],
    nerve_destroyer: info[14],
    biologics: info[15],
    generic: info[16],
    spare_2: info[17],
    dental_drugs: info[18],
    contrast_agent: info[19],
    injection_volume: info[20],
    listing_type: info[21],
    product_name_relations: info[22],
    old_price_type: info[23],
    old_price: info[24],
    name_chnage_category: info[25],
    kana_name_change_category: info[26],
    dosage_form: info[27],
    spare_3: info[28],
    changed_date: info[29],
    abolition_date: info[30],
    standard_code: info[31],
    order_number: info[32],
    expiration_date: info[33],
    standard_name: info[34],
    created_at: date,
    updated_at: date
  )
end
