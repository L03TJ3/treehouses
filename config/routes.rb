Rails.application.routes.draw do

  resources :treehouses
  resources :users, only: [:new, :create]

  get 'contact' => 'treehouses#contact'

  root 'treehouses#index'
end
