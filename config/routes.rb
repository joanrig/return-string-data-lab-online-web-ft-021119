Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'products#index'
  resources :orders
  resources :invoices
  resources :products
  get '/products/:id/body', to: 'products#body'
  
  get 'products/:id/inventory', to: 'products#inventory'
  get 'products/:id/description', to: 'products#description'
end
