Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }



root "homes#top"

get '/home/about', to: 'homes#about'


get '/users', to: 'users#index'
get '/books', to: 'books#index'

resources :users
resources :books






end

