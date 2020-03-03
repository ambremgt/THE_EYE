Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/results', to: 'pages#results'
  #get '/tagged', to: "pages#tagged", as: :tagged


  #get '/filmmaker/:user_id', to: 'pages#filmmaker'


  resources :users, only: [:show]

  resources :shotlists, only: [:show, :create, :new] do
    resources :shots, only: [:create, :new]
  end
  resources :shots, only: [] do
    resources :collaborations, only: [:create]
  end
  resources :shotlists, only: [:destroy]
  resources :shots, only: [:destroy]
  resources :collaborations, only: [:destroy]

  # messaging
  resources :chatrooms, only: [:create, :show] do
    resources :messages, only: :create
  end
end
