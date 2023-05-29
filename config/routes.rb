Rails.application.routes.draw do
  devise_for :users
  root  'shares#index'
  resources :users, only: :show
  resources :shares do
    resources :comments, only: :create
  end
  resources :questions do
    resources :answers, only: :create
  end
  resources :rooms, only: [:index, :new, :create, :destroy]
end
