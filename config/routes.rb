Rails.application.routes.draw do

  root to: "static_page#index"

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'

  resources :contacts
  resources :users, only: [:new, :create]

  
end
