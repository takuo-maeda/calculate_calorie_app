Rails.application.routes.draw do
  devise_for :users
  root 'circles#index'
  resources :profiles, only: [:new, :create] 
  resources :cooked_foods, only: [:new, :create] do 
    collection do
      get 'search'
    end
  end
  resources :home_cooked_meals, only: [:new, :create]
end
