Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users, skip: :sessions

   devise_scope :user do
     root to: 'welcome#index'
   end

  #root to:'devise/sessions#new'

  resources :parts
  resources :assemblies
  resources :authors
  resources :books
  resources :accounts
  resources :suppliers
end
