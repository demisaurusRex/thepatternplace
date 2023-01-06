Rails.application.routes.draw do
  devise_for :users
  get 'patterns/index'
  get 'patterns/show'
  get 'dashboard', to: 'pages#dashboard'
  root to: "pages#home"
  resources :patterns do
    resources :instructions
  end
end
