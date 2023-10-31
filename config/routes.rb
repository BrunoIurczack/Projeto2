Rails.application.routes.draw do

  root to: "static_page#index"

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]

  
end
