Rails.application.routes.draw do
  resources :resturant_pizzas
  resources :pizzas
  resources :resturants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
