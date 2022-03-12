Rails.application.routes.draw do
  # Define your application  per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/actors" => "actors#show"
  post "/actors" => "actors#show"

  get "/actors/:id" => "actors#show"
  get "/movies/:id" => "movies#show"
  get "/movies" => "movies#index"
  get "/movie-by-year" => "movies#by_year"
end
