Rails.application.routes.draw do
  resources :teachers
  resources :colleges, only: [:index, :create]
end