Rails.application.routes.draw do
  resources :loans
  resources :authors
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #match 'loans/new', to: 'loans#new', via: [:get, :post]
end