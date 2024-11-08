Rails.application.routes.draw do
  resources :production_orders
  resources :machines
  resources :inventories
  resources :orders
  resources :customers
  resources :enterprises
  root "home#index"
end
