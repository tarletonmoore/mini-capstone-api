class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
    # current_user.carted_products
    render :index
  end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      # order_id: nil,
      status: "carted",
    )
    render :show
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    # @carted_product.destroy
    @carted_product.status = "removed"
    @carted_product.save
    render json: { message: "you removed item" }
  end
end
