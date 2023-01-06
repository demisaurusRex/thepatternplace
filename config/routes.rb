Rails.application.routes.draw do
  get 'reviews/new'
  get 'patterns/index'
  get 'patterns/show'
  devise_for :users
  root to: "pages#home"
  resources :patterns do
    resources :reviews, only: [:new]
  end
end
