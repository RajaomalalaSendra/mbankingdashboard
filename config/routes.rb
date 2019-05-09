Rails.application.routes.draw do
  root "home#index"
  resource :home
  devise_for :users
  get 'profile/show', to: 'home#showuser'
  get '/byoperateur', to: 'home#byoperateur'
  get '/byoperateur/airtel', to: 'home#airtel'
  get '/byoperateur/orange', to: 'home#orange'
  get '/byoperateur/telma', to: 'home#telma'
  get '/statistique', to: "home#stats"
  get '/byoperateur/autres', to: 'home#others'
  resources :dashboards
end