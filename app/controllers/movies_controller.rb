class MoviesController < ApplicationController
  def lookup
    movie_pick = Movie.find(params[:id])
    render json: movie_pick.as_json
  end

  def show_all
    render json: Movie.all.as_json
  end

  def by_year
    lookup_year = params[:year].to_i
    movies = Movie.where(year: lookup_year)
    render json: movies.as_json
  end
end
