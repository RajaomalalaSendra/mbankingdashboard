Rails.application.routes.draw do
  root "home#index"
  resource :home
  devise_for :users
end