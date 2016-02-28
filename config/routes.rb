Rails.application.routes.draw do

  root 'welcome#index'

  get "log_in", to: "sessions#new"
  post "log_in", to: "sessions#create"
  post "log_out", to: "sessions#destroy"

  get "sign_up", to: "users#new"


  resources :users
  resources :characters, only: [:index, :show]
  resources :locations, only: [:show, :index]
  resources :items
  resources :sessions

  get '/locations/:id/pickup', to: 'locations#pickup'
  get '/locations/:id/details', to: 'locations#details'
  get '/locations/:id/current_items', to: 'locations#current_items'

end
