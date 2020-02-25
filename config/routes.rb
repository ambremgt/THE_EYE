Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/results', to: 'pages#results'
  get '/tagged', to: "pages#tagged", as: :tagged

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shotlists, only: [:show, :create, :new] do
    resources :shot, only: [:create, :new]
  end
  resources :shots, only: [] do
    resources :collaborations, only: [:create]
  end
  resources :shotlists, only: [:destroy]
  resources :shots, only: [:destroy]
  resources :collaborations, only: [:destroy]
end
