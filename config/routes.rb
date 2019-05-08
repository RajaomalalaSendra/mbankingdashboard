Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/show'
  get 'dashboard/edit'
  root "home#index"
  resource :home
  devise_for :users
  get 'profile/show', to: 'home#showuser'
end