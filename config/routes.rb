Rails.application.routes.draw do
  resources :userinfos
  devise_for :users
  get 'users', to: 'users#index'
  resources :todos
  root to: 'users#index'
end
