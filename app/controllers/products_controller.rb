class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def search
    @q = Product.search(search_params)
    @products = @q.result(distinct: true).page(params[:page])
    # binding.pry
  end

  

  private
  def search_params
    params.require(:q).permit!
    # ！にすることで検索ワードがなんでもOKなようにしている。あとで制限かける必要あり
  end

end
