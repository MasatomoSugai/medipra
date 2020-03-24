class RemoveColumns2FromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :transitional_time_limit, :integer
    remove_column :products, :spare, :string
    remove_column :products, :created_at, :datetime
    remove_column :products, :updated_at, :datetime
    
  end
end
