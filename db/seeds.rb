# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

animals = [
  {
  common_name: 'Polar Bear',
  latin_name: 'Ursus maritimus',
  kingdom: 'Animalia',
  },
  {
  common_name: 'Tiger',
  latin_name: 'Panthera tigris',
  kingdom: 'Animalia',
  },
  {
  common_name: 'Stoat',
  latin_name: 'Mustelidae',
  kingdom: 'Animalia',
  },
  {
  common_name: 'Frog',
  latin_name: 'Anura',
  kingdom: 'Animalia',
  },
]

animals.each do |animal|
  Animal.create animal
  puts "Created animal: #{animal}"
end

sightings = [
  {
  date: '2020-04-17 18:55:18',
  latitude: '60 deg N',
  longitude: '120 deg E',
  animal_id:Animal.first.id,
  },
  {
  date: '2014-03-18 18:55:18',
  latitude: '12 deg S',
  longitude: '11 deg W',
  animal_id:Animal.second.id,
  },
  {
  date: '2015-05-16 18:55:18',
  latitude: '-70 deg N',
  longitude: '-110 deg W',
  animal_id:Animal.third.id,
  },
  {
  date: '2018-10-19 18:55:18',
  latitude: '-40 deg S',
  longitude: '-50 deg E',
  animal_id:Animal.second.id,
  },
  {
  date: '2017-12-12 18:55:18',
  latitude: '-20 deg N',
  longitude: '-160 deg S',
  animal_id:Animal.third.id,
  },
]

sightings.each do |sighting|
  Sighting.create sighting
  puts "Created sighting: #{sighting}"
end
