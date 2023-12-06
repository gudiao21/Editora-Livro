Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users

  devise_scope :user do
    root to: 'welcome#index'
  end

  get '/reports/author_report', to: 'reports#author_report', as: 'author_report'
  get '/reports/supplier_report', to: 'reports#supplier_report', as: 'supplier_report'
  get '/reports/book_report', to: 'reports#book_report', as: 'book_report'

  resources :parts
  resources :assemblies do
    resources :assembly_parts, only: [:create, :destroy]
  end
  resources :authors
  resources :books
  resources :accounts
  resources :suppliers
end
