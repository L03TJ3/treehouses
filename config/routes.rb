Rails.application.routes.draw do

  resources :treehouses

  root 'treehouses#index'
end
