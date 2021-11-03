Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bichos do
    resources :adocaos, only: [:create, :new]
  end
  resources :adocaos, only: [:show]
end
