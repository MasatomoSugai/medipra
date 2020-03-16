class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def search
    # @q = Product.search(search_params)
    # @products = @q.result(distinct: true).page(params[:page])
    # binding.pry

    if params[:q] != nil
      # params[:q]['name_or_ingredients_cont'] = params[:q]['name_or_ingredients_cont'].split(/[\p{blank}\s]+/)
      # @q = Product.ransack(params[:q])Qiitaでは必要なコードだったけど、エラーが解決できず。
      @q = Product.search(params[:q])
      @products = @q.result(distinct: true).page(params[:page])
    else
      @q = Product.search(params[:q])
      @products = @q.result(distinct: true).page(params[:page]) #検索の結果を受け取る。
    end
    # binding.pry
  end

  

  private
  def search_params
    params.require(:q).permit!
    # ！にすることで検索ワードがなんでもOKなようにしている。あとで制限かける必要あり
  end

end
