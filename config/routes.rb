Rails.application.routes.draw do
  devise_for :users
  root to: 'bichos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bichos
  resources :adocaos, only: [:create]
end
