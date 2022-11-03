Rails.application.routes.draw do
  resources :cart_products
  resources :carts
  resources :brands
  resources :post_tags
  resources :user_posts
  resources :tags
  resources :posts
  resources :roles
  resources :orders

  resources :products

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
