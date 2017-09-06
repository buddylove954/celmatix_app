Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/admins/upload' => 'admins#upload'

  post '/products/create' => 'products#create'

  get '/products' => 'products#index'

  root to: 'products#index'
end
