Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :list_stocks
      resources :post_categories
      resources :post_stocks
      resources :lists
      resources :categories
      resources :posts
      resources :stocks
      resources :users
      post '/login', to: 'users#login'
      # post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
    end
  end
  get "/persist", to: "users#persist"
end