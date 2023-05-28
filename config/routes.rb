Rails.application.routes.draw do
  devise_for :users
  root  'shares#index'
  resources :users, only: :show
  resources :shares do
    resources :comments, only: :create
  end
  resources :questions, only: [:index, :new, :create]
end
