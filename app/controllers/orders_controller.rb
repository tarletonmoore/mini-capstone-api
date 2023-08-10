class OrdersController < ApplicationController
  before_action :authenticate_user

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render :show
    else
      render json: { message: "unauthorized" }
    end
  end

  def index
    # @orders = Order.where(user_id: current_user.id)
    @orders = current_user.orders
    render :index
  end

  def create
    @product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity].to_i * @product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: 1,
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    render :show
  end
end
