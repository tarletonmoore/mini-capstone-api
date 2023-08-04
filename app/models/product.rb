class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

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
