class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string   :category
      t.integer  :YJ_code
      t.string   :ingredients
      t.string   :standard
      t.string   :Kyokuhou
      t.string   :narcotic
      t.string   :other
      t.string   :name
      t.string   :company
      t.string   :generic
      t.string   :original
      t.string   :same_generic
      t.decimal  :price, precision: 15, scale: 2
      t.string   :transitional_time_limit
      t.string   :spare

      t.timestamps
    end
  end
end
