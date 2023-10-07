Rails.application.routes.draw do



  # GET / => houses#index

  root to: 'houses#index'

  resources "houses", only: [:index, :show]
  # GET / houses => houses#index
  # GET / houses/:id => houses#show

  resources "students", only: [:index, :show]
  # GET / students => students#index
  # GET / students/:id => students#show

  # alternative
  # get 'houses', to:'houses#index'

  # # GET /houses/:id => houses#show

  # get "houses/:id", to: "houses#show", id: /\d+/, as: 'house' # house_path

  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"
end
