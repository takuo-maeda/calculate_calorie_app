Rails.application.routes.draw do
  devise_for :users
  root 'circles#index'
  resources :profiles, only: [:new, :create] 
  resources :cooked_foods, only: [:new, :create,:edit, :update] do 
    collection do
      get 'search'
    end
  end
  resources :home_cooked_meals, only: [:new, :create]
  resources :cookings, only: [:new, :create, :edit, :update]
  resources :fridges, only: [:new, :create, :edit, :update]
  resources :foods, only: [:new, :create, :edit, :update]
  resources :cooking_food_fridges, only: [:new, :create, :edit, :update]

end
