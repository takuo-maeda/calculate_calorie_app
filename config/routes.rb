Rails.application.routes.draw do
  devise_for :users
  root 'circles#index'
  resources :profiles
end
