Rails.application.routes.draw do
  get 'records/index'
  devise_for :users
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :records
end
