Rails.application.routes.draw do

  devise_for :users
  resources :tree_houses do
    resources :reservations
  end

  get 'contact' => 'tree_houses#contact'

  root 'tree_houses#index'
end
