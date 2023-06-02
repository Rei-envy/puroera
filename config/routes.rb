Rails.application.routes.draw do
  devise_for :users
  root  'shares#index'
  resources :users, only: [:index, :show]
  resources :shares do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :questions do
    resources :answers, only: :create
  end
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
