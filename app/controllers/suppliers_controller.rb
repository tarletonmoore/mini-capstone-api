class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render template: "suppliers/show"
  end

  def create
    @supplier = Supplier.create(
      name: params[:name],
      email: params[:phone_number],

    )
    if @supplier.valid?
      render template: "suppliers/show"
    else
      render json: { errors: @supplier.errors.full_messages }
    end
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    @supplier.save
    if @supplier.valid?
      render template: "suppliers/show"
    else
      render json: { errors: @supplier.errors.full_messages }
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: { message: "You done deleted the supplier 😉" }
  end
end
