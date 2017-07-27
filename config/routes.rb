Rails.application.routes.draw do
  resources :books
  resources :users, only: [:new, :create, :show, :index]
  get "/sessions" => "sessions#destroy"
  resources :sessions, only: [:new, :create]

  root "books#index"
end
