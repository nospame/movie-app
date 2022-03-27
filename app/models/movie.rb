class Movie < ApplicationRecord
  validates :plot, length: { in: 10..500 }
  validates :title, presence: true
  validates :year, numericality: { in: 1850..2099}
  has_many :actors
  has_many :genre_movies
  has_many :genres, through: :genre_movies

  def genre_names
    genres.map{|genre| genre.name}
  end
end
