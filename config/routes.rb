Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

   devise_scope :user do
     root to: 'devise/sessions#new'
     #get 'login', to: 'devise/sessions#new', as: :new_user_session
   end

  #root to:'devise/sessions#new'

  resources :parts
  resources :assemblies
  resources :authors
  resources :books
  resources :accounts
  resources :suppliers
end
