Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "restaurants#index"

  # # A visitor can see the list of all restaurants
  # get "restaurants", to: "restaurants#index", as: "restaurants"
  # # A visitor can add a new restaurant, and be redirected to the show
  # get "restaurants/new", to: "restaurants#new", as: "new"
  # post "restaurants", to: "restaurants#create"
  # # A visitor can see the details of a restaurant
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  # # A visitor can add a new review to a restaurant
  # get "restaurants/:id/reviews", to: "reviews#create", as: "createreview"

  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
