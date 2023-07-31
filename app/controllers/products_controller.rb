class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def first_product
    @product = Product.first
    render template: "products/show"
  end
end
