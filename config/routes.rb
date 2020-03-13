Rails.application.routes.draw do
  root 'posts#index'
  # resources :posts, only: :index
  resources :users, only: [:new, :create]
  resources :about, only: :index
  resources :buy,   only: :index
end
