Rails.application.routes.draw do

  resources :treehouses
  resources :users, only: [:new, :create]

  root 'treehouses#index'
end
