Rails.application.routes.draw do
  resources :restaurants, only:[:index, :show, :destroy]
  resources :restaurant_pizzas, only:[:create, :index]
  resources :pizzas, only: [:index]


end
