Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :drinks, only: [:index]
  resources :products, only: [ :index, :new, :show, :create ]
  resources :tenders, only: [:new, :show, :create]
end
