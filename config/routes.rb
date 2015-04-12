Rails.application.routes.draw do
  root to: "root#index"

  resources :things, only: [:index]

  namespace :admin do
    resources :things, only: [:index]
  end
end
