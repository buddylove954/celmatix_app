Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :cart, only: [:show, :buy_products]
  resources :order_items, only: [:create, :update, :destroy]

  post '/admins/upload' => 'admins#upload'

  post '/carts/buy_products' => 'carts#buy_products'

  post '/products/create' => 'products#create'

  get '/products' => 'products#index'

  get '/admins/index' => 'admins#index'

  root to: 'products#index'
end
