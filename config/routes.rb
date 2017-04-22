Rails.application.routes.draw do
  resources :blogs
  resources :blogs do
    resources :messages
  end
  resources :orders
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :line_items
  resources :carts
  get 'pages/index';
  root 'pages#index';

  get 'signup'  => 'users#new'
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :products


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
