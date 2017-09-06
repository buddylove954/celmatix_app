class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def buy_products
    @order_items = current_order.order_items
    puts @order_items.inspect
    puts Order.all.count
    render 'carts/show'
  end
end
