# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Boat.create(
  name: 'Sample Boat 1',
  description: 'A luxurious yacht for ocean adventures.',
  capacity: 10,
  price: 1000,
  location: 'Miami, FL'
)

Boat.create(
  name: 'Sample Boat 2',
  description: 'A cozy sailboat for relaxing trips.',
  capacity: 4,
  price: 500,
  location: 'San Francisco, CA'

)
