Rails.application.routes.draw do
  resources :users
  resources :countries
  resources :locations
  resources :inventories
  resources :warehouses
  resources :add_category_to_products
  resources :categories
  resources :order_items
  resources :products
  resources :orders
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
