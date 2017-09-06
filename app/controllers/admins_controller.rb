class AdminsController < ApplicationController

  def index
    if current_admin
      @product = Product.new
      @customers = Customer.all
      render 'index.html.erb'
    else
      raise ActionController::RoutingError.new('Not Found')
    end

  end

  def upload
    @product = Product.new
    json_file = File.read(params[:json_file][:file].tempfile)
    json = JSON.parse(json_file)
    json['products'].each do |json_product|
      Product.create(json_product)
    end
    render 'index.html.erb'
  end

  private

  def upload_params
    params.permit(:json_file)
  end
end