require 'faker'

puts 'Starting Seed'
50.times do
  Restaurant.create!(
    name: Faker::TvShows::GameOfThrones.character,
    city: Faker::Movies::HarryPotter.location
  ) # create = new + save
end

puts "Seed finished with #{Restaurant.count} restaurants"
