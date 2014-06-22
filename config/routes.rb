Rails.application.routes.draw do
  resources :reviews, only: :index
  resources :restaurants, only: [:index, :new, :create]

  root 'reviews#index'
end
