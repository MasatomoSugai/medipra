class RemoveColumnsFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :YJ_code, :integer
    remove_column :products, :ingredients, :string
    remove_column :products, :standard, :string
    remove_column :products, :Kyokuhou, :string
    remove_column :products, :narcotic, :string
    remove_column :products, :other, :string
    
    remove_column :products, :company, :string
    remove_column :products, :generic, :string
    remove_column :products, :original, :string
    remove_column :products, :same_generic, :string

  end
end
