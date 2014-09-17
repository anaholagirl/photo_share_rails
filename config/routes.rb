Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'photos#index'
  resources :users
  resources :sessions
  resources :photos do
    resources :tags, :only => [:new, :create]
    resources :favorites, :only => [:new, :create]
  end
  resources :tags
  resources :favorites

end
