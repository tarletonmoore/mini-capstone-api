class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.create(name: params[:input_name],
                              price: params[:input_price],
                              image_url: params[:input_image_url],
                              description: params[:input_description])
    render template: "products/show"
  end
end
