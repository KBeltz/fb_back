Rails.application.routes.draw do
  resources :forms
  resources :fields
  resources :templates
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
