Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }



root "homes#top"


get '/home/about', to: 'homes#about'
resources :users
resources :books, onry: [:new, :create, :index, :show, :destroy]






end

