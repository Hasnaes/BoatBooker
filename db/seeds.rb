# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database with boats and users"
Boat.destroy_all
User.destroy_all

User.create(
  email: 'michael@test.com',
  username: 'michael',
  password: '123456'
)

User.create(
  email: 'lisa@test.com',
  username: 'lisa',
  password: '123456'
)

Boat.create(
  name: 'Falcon - Yacht charter',
  description: 'Welcome aboard the extraordinary Falcao 31m, a masterpiece of luxury and elegance nestled in the stunning harbor of Palma de Mallorca. Falcao 31m offers exceptional charter experiences, including 6-hour, 8-hour, and overnight charters, transforming your dreams of a lavish escape into a reality.',
  capacity: 10,
  price: 1000,
  location: 'Terminal D - Port of Miami, Miami',
  user: User.last
)

Boat.create(
  name: 'Princess - Yacht charter V55',
  description: "This magnificent white PRINCESS V55 yacht is available for charter from the ports of La Grande Motte, Saint Tropez, Cannes, Monaco, Ibiza, Barcelona, Cadaqués, Sète, Cassis, Cap d'Agde and Corsica.",
  capacity: 4,
  price: 500,
  location: 'Marina Green, San Francisco',
  user: User.first
)
