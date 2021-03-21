Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :drinks, only: [:index]
  resources :products, only: [ :index, :new, :show, :create ]
  resources :tenders, only: [:new, :show, :create] do
    resources :bids, only: [:new, :create]
  end

  resources :bids, only: [:show]
end
