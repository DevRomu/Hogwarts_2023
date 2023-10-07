Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  # GET / => houses#index

  root to: 'houses#index'

  resources "houses", only: [:index, :show]

  # GET / houses => houses#index
  # GET / houses/:id => houses#show

  # alternative
  # get 'houses', to:'houses#index'

  # # GET /houses/:id => houses#show

  # get "houses/:id", to: "houses#show", id: /\d+/, as: 'house' # house_path

  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"
end
