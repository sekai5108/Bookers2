Rails.application.routes.draw do
  resources :books

  devise_for :users


get '/', to: 'homes#top'
get '/home/about', to: 'homes#about'
end
