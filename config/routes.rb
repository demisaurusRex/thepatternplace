Rails.application.routes.draw do
  get 'patterns/index'
  get 'patterns/show'
  devise_for :users
  root to: "pages#home"
  resources :patterns
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
