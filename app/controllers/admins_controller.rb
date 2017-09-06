class AdminsController < ApplicationController

  def index
    render 'index.html.erb'
  end

  def upload
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