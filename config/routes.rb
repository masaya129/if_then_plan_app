Rails.application.routes.draw do
  get 'records/index'
  devise_for :users
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :records, only: [:index, :new, :create]
  end
end
