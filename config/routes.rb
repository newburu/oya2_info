Rails.application.routes.draw do
  resources :assessments
  resources :photos
  resources :items
  resources :products
  resources :brands
  resources :stores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
