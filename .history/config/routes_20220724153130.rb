Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :users, only: [:show, :index]
end
