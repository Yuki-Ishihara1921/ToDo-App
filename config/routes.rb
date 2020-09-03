Rails.application.routes.draw do
  devise_for :users
  get 'users', to: 'users#index'
  resources :todos
  root to: 'users#index'
end
