Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :list_stocks
      resources :user_posts
      resources :post_categories
      resources :post_stocks
      resources :lists
      resources :categories
      resources :posts
      resources :stocks
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end