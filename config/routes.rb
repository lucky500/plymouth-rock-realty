Rails.application.routes.draw do
  get 'properties/index'

  get 'properties/show'

  get 'properties/new'

  get 'properties/create'

  get 'properties/edit'

  get 'properties/update'

  get 'properties/destroy'

  devise_for :users
  
  # resources :welcome
  authenticated do
    root 'properties#index'
  end

  root :to => 'welcome#index'

  get 'about', to: 'welcome#about'

  resources :properties
end
