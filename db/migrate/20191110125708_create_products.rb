class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer  :change_category
      t.string   :master_type
      t.integer  :pharmaceutical_code
      t.integer  :kanji_significant_digits
      t.string   :name
      t.integer  :kana_significant_digits 
      t.string   :kana_name
      t.integer  :unit_code
      t.integer  :unit_significant_digits
      t.string   :unit_name
      t.integer  :price_type
      t.integer  :price
      t.integer  :spare_1
      t.integer  :n_p_s_p_drugs
      t.integer  :nerve_destroyer
      t.integer  :biologics
      t.integer  :generic
      t.integer  :spare_2
      t.integer  :dental_drugs
      t.integer  :contrast_agent
      t.integer  :injection_volume
      t.integer  :listing_type
      t.integer  :product_name_relations
      t.integer  :old_price_type
      t.integer  :old_price
      t.integer  :name_chnage_category
      t.integer  :kana_name_change_category
      t.integer  :dosage_form
      t.integer  :spare_3
      t.integer  :changed_date
      t.integer  :abolition_date
      t.string   :standard_code
      t.integer  :order_number
      t.integer  :expiration_date
      t.string   :standard_name
      t.timestamps
    end
  end
end
