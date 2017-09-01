class ProductsController < ApplicationController

  def index
    render current_admin ? '/admins/index.html.erb' : 'index.html.erb'
  end
end