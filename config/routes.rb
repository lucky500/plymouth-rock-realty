Rails.application.routes.draw do
  devise_for :users
  
  resources :welcome
  root 'welcome#index'

  resources :properties
end
