Rails.application.routes.draw do
  
  resources :zones do
  	resources :utcs
  end
  
  root 'zones#index'

end
