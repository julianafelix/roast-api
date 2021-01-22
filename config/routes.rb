Rails.application.routes.draw do
  resources :users, only: [:create, :index]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :roast_profiles
end
