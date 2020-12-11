
require "csv"
date = "2020-04-01"
i = 1

CSV.foreach('db/medipra20201210ad.csv') do |info|
  Product.create!(
    price: info[11],
    change_category: info[0],
    master_type: info[1],
    pharmaceutical_code: info[2],
    kanji_significant_digits: info[3],
    kanji_name: info[4],
    kana_significant_digits: info[5],
    kana_name: info[6],
    unit_code: info[7],
    unit_significant_digits: info[8],
    unit_name: info[9],
    price_type: info[10],
    spare: info[12],
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
    name_change_category: info[25],
    kana_name_change_category: info[26],
    dosage_form: info[27],
    spare_3: info[28],
    changed_date: info[29],
    abolition_date: info[30],
    standard_code: info[31],
    order_number: info[32],
    expiration_date: info[33],
    standard_name: info[34]

  )
end
