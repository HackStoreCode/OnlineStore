Rails.application.routes.draw do
  resources :orders
  resources :order_groups
  resources :products
  resources :users
  resources :charges

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
