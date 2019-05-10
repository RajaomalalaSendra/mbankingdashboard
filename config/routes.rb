Rails.application.routes.draw do
  resources :contacts
  get 'contacts/index'
  get 'contacts/show'
  get 'contacts/new'
  get 'contacts/edit'
  root "home#index"
  resource :home
  devise_for :users
  get 'profile/show', to: 'home#showuser'
  get '/byoperateur', to: 'home#byoperateur'
  get '/byoperateur/airtel', to: 'home#airtel'
  get '/byoperateur/orange', to: 'home#orange'
  get '/byoperateur/telma', to: 'home#telma'
  get '/statistique/tout', to: "home#stats"
  get '/statistique/aujourdhui', to: "home#today"
  get '/statistique/hier', to: "home#yesterday"
  get '/byoperateur/autres', to: 'home#others'
  get '/statistique/avanthier', to: 'home#two_days_before'
  # to get all the path for the telma/airtel/orange and autres
  get '/byoperateur/telma/tout', to: 'home#telma'
  get '/byoperateur/telma/aujourdhui', to: 'home#telma_today'
  get '/byoperateur/telma/hier', to: 'home#telma_yesterday'
  get '/byoperateur/telma/avanthier', to: 'home#telma_two_days_ago'
  # the routes of airtel
  get '/byoperateur/airtel/tout', to: 'home#airtel'
  get '/byoperateur/airtel/aujourdhui', to: 'home#airtel_today'
  get '/byoperateur/airtel/hier', to: 'home#airtel_yesterday'
  get '/byoperateur/airtel/avanthier', to: 'home#airtel_two_days_ago'
  # the routes of orange
  get '/byoperateur/orange/tout', to: 'home#orange'
  get '/byoperateur/orange/aujourdhui', to: 'home#orange_today'
  get '/byoperateur/orange/hier', to: 'home#orange_yesterday'
  get '/byoperateur/orange/avanthier', to: 'home#orange_two_days_ago'
  # the routes of autres
  get '/byoperateur/autres/tout', to: 'home#others'
  get '/byoperateur/autres/aujourdhui', to: 'home#others_today'
  get '/byoperateur/autres/hier', to: 'home#others_yesterday'
  get '/byoperateur/autres/avanthier', to: 'home#others_two_days_ago'
  # the routes of all dashboard
  get '/dash/tout', to: 'home#dash_all'
  get '/dash/aujourdhui', to: 'home#dash_today'
  get '/dash/hier', to: 'home#dash_yesterday'
  get '/dash/avanthier', to: 'home#dash_two_days_ago'
  get '/moncontact/tout', to: 'home#contact'
  resources :dashboards
end