Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :create_users
  resources :posts

  post '/create_comment', to: 'users#create_comment'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
