Rails.application.routes.draw do
  root :to => "movies#index"
  resources :actors
  resources :roles
  resources :directors
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
