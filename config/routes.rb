Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :patterns do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  get 'patterns/:id/steps', to: "patterns#show_steps", as: "pattern_steps"
  get 'patterns/:id/instructions', to: "patterns#show_instructions", as: "pattern_instructions"

  get 'orders/:order_id/customised_instructions/new', to: "customised_instructions#new", as: "new_customised_instruction"
  post 'orders/:order_id/customised_instructions', to: "customised_instructions#create", as: "order_customised_instructions"

  resources :customised_instructions, only: [:show, :destroy]
  get 'customised_instructions/:id/steps', to: "customised_instructions#show_steps", as: "customised_instruction_steps"

  get 'carts/show'
  get 'carts/:id' => "carts#show", as: "cart"
  post 'carts/checkout' => "carts#checkout", as: "checkout_cart"
  delete 'carts/:id' => "carts#destroy"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  resources :reviews, only: [:destroy]
end
