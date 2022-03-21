Rails.application.routes.draw do
  resources :notifications, only: [:index]
  resources :messages
  devise_for :users
  get 'dashboard/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#show"
end
