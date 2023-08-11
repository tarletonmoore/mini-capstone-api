class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

  # def supplier
  #   Supplier.find_by(id: id)
  # end

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
