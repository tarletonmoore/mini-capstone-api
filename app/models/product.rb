class Product < ApplicationRecord
  def is_discounted?
    price <= 10
  end

  def tax
    sales_tax = 0.09
    price * sales_tax
  end

  def total
    price + tax
  end
end
