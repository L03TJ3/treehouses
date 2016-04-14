Rails.application.routes.draw do

  resources :treehouses
  get 'contact' => 'treehouses#contact'

  root 'treehouses#index'
end
