Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts

  root 'pages#home'
  get '/about', to: 'pages#about'

  # Add the following line to define the sign-out route
  # delete '/users/sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session

  # Define your additional application routes here

  # Defines the root path route ("/")
  # root "articles#index"
end
