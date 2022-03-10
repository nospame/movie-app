Rails.application.routes.draw do
  # Define your application  per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/find-actor" => "actors#lookup"
  get "/find-movie" => "movies#lookup"
  get "/movies/all" => "movies#show_all"
  get "/movie-by-year" => "movies#by_year"
end
