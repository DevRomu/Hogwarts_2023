Rails.application.routes.draw do
  # GET / => houses#index

  root to: 'houses#index'

  # GET /houses/:id => houses#show

  get "houses/:id", to: "houses#show", id: /\d+/

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
