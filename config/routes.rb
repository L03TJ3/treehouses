Rails.application.routes.draw do

  devise_for :users
  resources :treehouses

  get 'contact' => 'treehouses#contact'

  root 'treehouses#index'
end
