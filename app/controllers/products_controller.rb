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
      @q = Product.ransack(params[:q])
      @products = @q.result(distinct: true).page(params[:page]).order(price: 'DESC')
    else
      @q = Product.ransack(params[:q])
      @products = @q.result(distinct: true).page(params[:page]).order(price: 'DESC') #検索の結果を受け取る。
    end
  end

  def samedrugsearch
    @q = Product.ransack(params[:q])
    @search_code = params[:standard_code].split(/\A(.{1,8})/,2)[1]
    @products =  Product.where("standard_code LIKE ?", "#{@search_code}____").order(price: 'DESC').page(params[:page])
  end

  def about_medipra
  end

  def contact
  end

  private
  def search_params
    params.require(:q).permit!
    # ！にすることで検索ワードがなんでもOKなようにしている。あとで制限かける必要あり
  end

end
