Rails.application.routes.draw do
  get 'collaborations/create'
  get 'collaborations/destroy'
  get 'shots/new'
  get 'shots/create'
  get 'shots/destroy'
  get 'shotlists/new'
  get 'shotlists/create'
  devise_for :users
  root to: 'pages#home'
  get '/results', to: 'pages#results'
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
