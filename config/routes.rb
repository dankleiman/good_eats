Rails.application.routes.draw do
  resources :reviews, only: :index
  resources :restaurants, only: [:index, :new, :create, :show]

  root 'reviews#index'
end
