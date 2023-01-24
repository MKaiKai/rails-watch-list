# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Movie.destroy_all

puts "Creating a movie..."

16.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.between(from: 0.0, to: 5.0)
    )

    # require 'open-uri'
    # Movie.destroy_all
    # # List.destroy_all

    # # the Le Wagon copy of the API
    # url = 'http://tmdb.lewagon.com/movie/top_rated'
    # response = JSON.parse(URI.open(url).read)

    # response['results'].each do |movie_hash|
    #   puts
    #   p movie_hash
    #   # create an instance with the hash
    #   # Movie.create!(
    #   #   poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path']
    #   #   ...
    #   # )
    # end

puts "Movie with id: #{movie.id} has been created"
end

puts "Finished!"
