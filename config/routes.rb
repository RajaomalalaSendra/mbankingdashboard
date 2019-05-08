Rails.application.routes.draw do
  get 'dashboards/new'
  get 'dashboards/show'
  get 'dashboards/edit'
  root "home#index"
  resource :home
  devise_for :users
  get 'profile/show', to: 'home#showuser'
  resource :dashboard
end