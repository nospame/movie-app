class GenreMoviesController < ApplicationController
  def create
    genre_movie = GenreMovie.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    genre_movie.save
    render json: genre_movie.as_json
  end
end
