Rails.application.routes.draw do
  devise_for :users

  resources :meetups do
    resources :comments
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
    end
  end

  root "meetups#index"
end
