Rails.application.routes.draw do
  resources :reviews, only: :index
  resources :restaurants, only: :index

  root 'reviews#index'
end
