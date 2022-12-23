Rails.application.routes.draw do
  resources :to_do_lists
  resources :riminders
  resources :habits
  resources :users do
    resources :habits
  end

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"

  # Defines the root path route ("/")
  # root "articles#index"
 
end
