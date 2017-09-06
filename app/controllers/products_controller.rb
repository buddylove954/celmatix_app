class ProductsController < ApplicationController

  def index
      @products = Product.all
      @order_item = current_order.order_items.new
      render 'index.html.erb'
  end

  def create
    @product = Product.new
    if @product.update_attributes(product_create_params['product'])
      flash[:notice] = "Created: #{@product.name} product"
    else
      flash[:notice] = "unable to created product. Contained these errors: #{@product.errors.messages}"
    end
    render 'admins/index.html.erb'
  end

  private

  def product_create_params
    params.permit(product:[:name, :desc, :sku, :price, :model, :brand])
  end
end