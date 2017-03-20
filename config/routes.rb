Rails.application.routes.draw do
  devise_for :users
  resources :meetups
  root "meetups#index"
end
