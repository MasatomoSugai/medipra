class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def search
    # params[:q]['standard_name_cont_all'] = params[:q]['standard_name_cont_all'].split(/[\p{blank}\s]+/)

    # params[:q]['standard_name_cont_all'] = params[:q]['standard_name_cont_all'].split(/[\p{blank}\s]+/)
    # @q = Product.ransack(params[:q])
    # @products = @q.result(distinct: true).page(params[:page]).order(price: 'DESC')
      
    if params[:q] != nil
      params[:q]['standard_name_cont_all'] = params[:q]['standard_name_cont_all'].split(/[\p{blank}\s]+/)
      @q = Product.ransack(params[:q])
      @products = @q.result(distinct: true).page(params[:page]).order(price: 'DESC')
    else
      params[:q]['standard_name_cont_all'] = params[:q]['standard_name_cont_all'].split(/[\p{blank}\s]+/)

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
    params.require(:q).permit(:standard_name_cont)
  end

end
