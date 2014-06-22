Rails.application.routes.draw do
  resources :reviews, only: :index

  root 'reviews#index'
end
