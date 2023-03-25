Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    # Twitter API認証用
    :omniauth_callbacks => 'users/omniauth_callbacks',
  }
  
  resources :reports
  resources :assessments
  resources :items
  resources :products
  resources :brands
  resources :stores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # 静的ページ
  get 'static_pages/info'
  get 'static_pages/terms'
  get 'static_pages/privacy'

  # Defines the root path route ("/")
  root 'portals#index'

  get '/portals', to: 'portals#index'

end
