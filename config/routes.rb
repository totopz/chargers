Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  # Admin area routes
  namespace :admin do
    root to: "dashboard#index"  # Admin dashboard route
    resources :locations
    resources :chargers
  end
end
