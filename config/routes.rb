Rails.application.routes.draw do
  devise_for :users
  root  'shares#index'
  resources :users, only: :show
  resources :shares, only: [:index, :new, :create, :show]
end
