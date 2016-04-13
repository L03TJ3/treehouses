Rails.application.routes.draw do

  resources :treehouses
  resources :users, only: [:new, :create]

  get 'contact' => 'contact#index'
  root 'treehouses#index'
end
