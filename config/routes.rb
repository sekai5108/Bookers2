Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show, :destroy]

  devise_for :users

resources :users, only: [:show, :edit]

get '/', to: 'homes#top'
get '/home/about', to: 'homes#about'


get '/users', to: 'users#index'
get '/books', to: 'books#index'








end

