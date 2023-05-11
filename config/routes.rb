Rails.application.routes.draw do
  get "about", to:'about#index'
  get "register", to:"registration#new"
  post "register", to:"registration#create"
  delete "logout", to:"session#destroy"
  get "login", to:"session#new"
  post "login", to:"session#create"
  get "password", to:"password#edit"
  patch "password", to:"password#update"
  get "password/reset", to:"password_reset#new"
  post 'password/reset', to:"password_reset#create"
  root 'main#index'
end
