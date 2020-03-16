Rails.application.routes.draw do
  root 'posts#index'
  resources :users, only: [:new, :create]
  resources :about, only: :index
  resources :buy,   only: :index
end
