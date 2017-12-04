Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root :to => 'properties#index', as: :authenticated_root
  end
  root :to => 'welcome#index'

  get 'about', to: 'welcome#about'

  resources :properties
end
