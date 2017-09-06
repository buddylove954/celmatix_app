require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save a product without a name,brand,price,sku,model or desc" do
    product = Product.new
    assert_not product.save
  end

  test 'expect to save a product when name, brand, price, sku, model and desc are passed in' do
    product = Product.new(name: 'sun tan', brand: 'lotion', price: 100.00, model: 'ST847375893', sku: '12381294819', desc: 'it puts the lotion on the skin')
    assert product.save
  end
end
