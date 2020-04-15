Rails.application.routes.draw do
  get "/", to: "home#index"
  resources :users
  resources :todos
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "signout" => "sessions#destroy", as: :destroy_session
end
