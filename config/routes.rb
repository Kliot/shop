Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/auth/:provider/callback', to: 'sessions#create'
  devise_for :users
  resources :users, only: [:update] do
    collection do
      get :me
    end
  end

  # get 'signup'  => 'users#new'
  #
  # get '/login' => 'sessions#new'
  # post 'login' => 'sessions#create'
  # delete 'logout' => 'sessions#destroy'
  resources :products
  resources :products do
    resources :images
  end
  resources :blogs
  resources :blogs do
    resources :messages
  end

  get 'blog/:id/likes', to: 'blogs#likes', as: :likes
  resources :orders
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :line_items
  resources :carts
  get 'pages/index'
  root 'pages#index'






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
