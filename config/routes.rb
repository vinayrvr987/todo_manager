Rails.application.routes.draw do
  get "/", to: "home#index"
  resources :users
  resources :todos
  post "users/login", to: "users#login"
end
