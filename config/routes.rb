Rails.application.routes.draw do
  devise_for :users

  resources :meetups do
    resources :comments
  end

  root "meetups#index"
end
