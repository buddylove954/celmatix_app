class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  protected
  def after_sign_in_path_for(resource)
    if current_admin
      admins_index_path
    else
      products_index_path
    end
  end
end
