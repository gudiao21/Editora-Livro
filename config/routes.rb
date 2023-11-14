Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users

  devise_scope :user do
    root to: 'welcome#index'
  end

  resources :parts
  resources :assemblies do
    resources :assembly_parts, only: [:create, :destroy]
  end
  resources :authors
  resources :books
  resources :accounts
  resources :suppliers
end
