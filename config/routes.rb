Rails.application.routes.draw do
  resources :colleges, only: [:index, :create]
end