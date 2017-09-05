class ProductsController < ApplicationController

  def index
    @products = Product.all
    render current_admin ? '/admins/index.html.erb' : 'index.html.erb'
  end
end