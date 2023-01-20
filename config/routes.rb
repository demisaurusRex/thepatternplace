Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: "pages#dashboard", as: "dashboard"
  get 'patterns/:id/instructions', to: "patterns#show_instructions", as: "pattern_instructions"
  resources :patterns do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  get 'patterns/:id/steps', to: "patterns#show_steps", as: "pattern_steps"
  get 'patterns/:id/instructions', to: "patterns#show_instructions", as: "pattern_instructions"

  get 'orders/:order_id/customised_instructions/new', to: "customised_instructions#new", as: "new_customised_instruction"
  post 'orders/:order_id/customised_instructions', to: "customised_instructions#create", as: "order_customised_instructions"

  resources :customised_instructions, only: [:show, :destroy]

  resources :customised_instruction_steps, only: [:edit, :update]
  get 'customised_instruction_steps/:id/', to: "customised_instruction_steps#show", as: "customised_instruction_steps"
  patch 'customised_instruction_steps/:id/category', to: "customised_instruction_steps#update_category"


  get 'carts/show'
  get 'carts/:id' => "carts#show", as: "cart"
  post 'carts/checkout' => "carts#checkout", as: "checkout_cart"
  delete 'carts/:id' => "carts#destroy"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  resources :reviews, only: [:destroy]
end
