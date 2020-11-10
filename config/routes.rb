Rails.application.routes.draw do
  get 'pictures/new'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :destroy]

  resources :albums # :only => [:new, :create, :index, :destroy]
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'
  put '/picture/:id/like' => 'pictures#like', as: 'like'
  delete 'picture/:id/like' => 'pictures#unlike'

  resources :pictures
end
