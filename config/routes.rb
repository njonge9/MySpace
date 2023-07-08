Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'pages#home'
  get '/about', to:'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
