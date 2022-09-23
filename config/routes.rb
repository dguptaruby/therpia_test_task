Rails.application.routes.draw do
  resources :images
  resources :user_regions
  resources :regions
  resources :places
  resources :countries
  resources :states
  resources :cities
  resources :companies
  resources :user_profiles
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
