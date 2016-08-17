Rails.application.routes.draw do
  resources :convertidors
  root :to => 'convertidors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
