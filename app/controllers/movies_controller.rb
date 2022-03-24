class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movies = Movie.all
    render template: "movies/index"
  end
  
  def create
    @movie = Movie.new(
      title: params[:title],
      plot: params[:plot],
      year: params[:year],
      director: params[:director],
      english: params[:english] || true
    )
    if @movie.save
      render template: "movies/show"
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render template: "movies/show"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.plot = params[:plot] || @movie.plot
    @movie.year = params[:year] || @movie.year
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render template: "movies/show"
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie deleted."}
  end

end
