Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :resources, only: [:show, :create, :index, :update, :destroy]

  root 'resources#index'
end
