Rails.application.routes.draw do
  resources :users
  resources :todos
  post "users/login", to: "users#login"
end
