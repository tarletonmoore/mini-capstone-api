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
    @product = Product.create(name: "Mario Kart 64", price: 40, image_url: "https://upload.wikimedia.org/wikipedia/en/a/a1/Mario_Kart_64.jpg", description: "Mario Kart 64 is a kart racing video game developed and published by Nintendo for the Nintendo 64.")
    render template: "products/show"
  end
end
