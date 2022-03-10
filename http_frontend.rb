require 'http'

movies = HTTP.get("http://localhost:3000/movies/all")
movies = movies.parse(:json)

puts "Here is information about all the movies:"
puts movies
