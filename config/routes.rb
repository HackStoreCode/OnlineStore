Rails.application.routes.draw do
<<<<<<< HEAD
  resources :payments
  devise_for :users
  
=======
  resources :orders
  resources :order_groups
  resources :products
>>>>>>> 2720183df690f1bf121f7c1d76d35048edb4d6a6
  resources :users
  resources :charges

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
