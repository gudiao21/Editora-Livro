#require "#{Rails.root}/app/controllers/users/sessions_controller"

Rails.application.routes.draw do
  devise_for :users

  root to: "app/controllers/users/sessions#new"

  resources :parts
  resources :assemblies
  resources :authors
  resources :books
  resources :accounts
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
