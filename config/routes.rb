Rails.application.routes.draw do
  resources :reviews, only: [:index, :create]
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new]
  end


  root 'restaurants#recent'
end
