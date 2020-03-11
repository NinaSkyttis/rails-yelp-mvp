# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'Italian',
    phone_number: '12 34 56 78 90'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'Japanese',
    phone_number: '09 87 65 43 21'
  },
  {
    name:         'El Pachuco',
    address:      'Carrer de San Pau, Barcelona',
    category:     'Italian',
    phone_number: '98 76 54 32 10'
  },
  {
    name:         'Max',
    address:      'Stockholm',
    category:     'French',
    phone_number: '08 97 86 75 43'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

puts 'Creating restaurants...'
reviews_attributes = [
  {
    content: 'Fresh',
    rating: 3,
    restaurant_id: 4
  },
  {
    content: 'Cool',
    rating: 4,
    restaurant_id: 3

  },
  {
    content: 'Bad',
    rating: 2,
    restaurant_id: 1
  },
  {
    content: 'Gross',
    rating: 1,
    restaurant_id: 2
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
