class Movie < ApplicationRecord
  validates :plot, length: { in: 10..500 }
  validates :title, presence: true
  validates :year, numericality: { in: 1850..2099}
end
