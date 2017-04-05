Rails.application.routes.draw do
  get 'pages/index';
  root 'pages#index';
  resources :messages
  root 'messages#index';
  get '/messages' => 'messages#index';
  get '/messages/new' => 'messages#new';
  post '/messages' => 'messages#create';
  get '/messages/:id/show' => 'messages#show';
  get '/messages/:id/edit' => 'messages#edit';
  delete '/messages/:id' => 'messages#destroy';
  get 'signup'  => 'users#new'
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :products
  root 'products#index';
  get '/products' => 'products#index';
  get '/products/new' => 'products#new';
  post '/products' => 'products#create';
  get '/products/:id/show' => 'products#show';
  get '/products/:id/edit' => 'products#edit';
  delete '/products/:id' => 'products#destroy';

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
