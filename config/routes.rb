Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/cart', to: 'carts#index'
  post '/cart', to: 'carts#index'
  resources :experiences, only: [:index]

  resources :carts
end
