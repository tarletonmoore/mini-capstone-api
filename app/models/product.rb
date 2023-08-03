class Product < ApplicationRecord
  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    sales_tax = price * 0.09
    return "$#{sales_tax}"
  end

  def total
    sales_tax = price * 0.09
    taxed_price = price + sales_tax
    return "$#{taxed_price}"
  end
end
