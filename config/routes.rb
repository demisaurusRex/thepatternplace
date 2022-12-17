Rails.application.routes.draw do
  get 'patterns/index'
  get 'patterns/show'
  devise_for :users
  root to: "pages#home"
  resources :patterns

end
