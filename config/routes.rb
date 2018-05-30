Rails.application.routes.draw do

  root :to => "sessions#new"
  
  resources :sessions, only: [:index, :new, :create, :destroy]

  resources :users

  resources :posts
  
  resources :comments, except: :index
  
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
