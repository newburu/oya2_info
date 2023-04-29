Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    # Twitter API認証用
    :omniauth_callbacks => 'users/omniauth_callbacks',
  }
  
  resources :reports do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  resources :assessments
  resources :items do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  resources :products do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  resources :brands do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  resources :stores do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # 静的ページ
  get 'static_pages/info'
  get 'static_pages/terms'
  get 'static_pages/privacy'

  # Defines the root path route ("/")
  root 'portals#index'

  get '/portals', to: 'portals#index'

end
