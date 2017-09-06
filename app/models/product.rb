class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :brand, :sku, :price, :desc, :model, presence: true
end
