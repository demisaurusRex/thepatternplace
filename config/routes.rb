Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :patterns do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  get 'carts/show'
  get 'carts/:id' => "carts#show", as: "cart"
  post 'carts/checkout' => "carts#checkout", as: "checkout_cart"
  delete 'carts/:id' => "carts#destroy"

  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  resources :reviews, only: [:destroy]
end
