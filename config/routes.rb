Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/u/:id', to: 'users#profile', as: 'user'

  resources :posts do
    resources :comments
  end

  root 'pages#home'
  get '/about', to: 'pages#about'

  # Add the following line to define the sign-out route
  # delete '/users/sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session

  # Define your additional application routes here

  # Defines the root path route ("/")
  # root "articles#index"
end
