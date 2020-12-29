Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :lists, only: [:new, :create, :destroy, :edit, :update] do
    resources :cards, only: [:new, :create,:show, :edit, :update]
  end
end
