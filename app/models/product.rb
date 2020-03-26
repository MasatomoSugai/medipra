class Product < ApplicationRecord
  validates :standard_name_cont_all, presence: true, length: { maximum: 4 }

  def index
  end
  
  private

end
