Rails.application.routes.draw do
 
  get 'toppages/index'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to: "tasks#index"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
  
  get "signup", to: "users#new"
  resources :users, only: [:index, :show, :new, :create]
end
