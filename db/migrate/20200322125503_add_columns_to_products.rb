class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :change_category, :integer
    add_column :products, :master_type, :string
    add_column :products, :pharmaceutical_code, :integer
    add_column :products, :kanji_significant_digits, :integer
    add_column :products, :kanji_name, :string
    add_column :products, :kana_significant_digits, :integer
    add_column :products, :kana_name, :string
    add_column :products, :unit_code, :integer
    add_column :products, :unit_significant_digits, :integer
    add_column :products, :unit_name, :string
    add_column :products, :price_type, :integer
    add_column :products, :spare, :integer
    add_column :products, :n_p_s_p_drugs, :integer
    add_column :products, :nerve_destroyer, :integer
    add_column :products, :biologics, :integer
    add_column :products, :generic, :integer
    add_column :products, :spare_2, :integer
    add_column :products, :dental_drugs, :integer
    add_column :products, :contrast_agent, :integer
    add_column :products, :injection_volume, :integer
    add_column :products, :listing_type, :integer
    add_column :products, :product_name_relations, :integer
    add_column :products, :old_price_type, :integer
    add_column :products, :old_price, :integer
    add_column :products, :name_change_category, :integer
    add_column :products, :kana_name_change_category, :integer
    add_column :products, :dosage_form, :integer
    add_column :products, :spare_3, :integer
    add_column :products, :changed_date, :integer
    add_column :products, :abolition_date, :integer
    add_column :products, :standard_code, :string
    add_column :products, :order_number, :integer
    add_column :products, :expiration_date, :integer
    add_column :products, :standard_name, :string
  end
end
