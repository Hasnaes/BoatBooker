# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database with boats and users"
Booking.destroy_all
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

require "open-uri"
file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692879171/boat5_ejekn2.jpg")
boat1 = Boat.create(
  name: 'Falcon',
  description: 'Welcome aboard the extraordinary Falcao 31m, a masterpiece of luxury and elegance nestled in the stunning harbor of Palma de Mallorca. Falcao 31m offers exceptional charter experiences, including 6-hour, 8-hour, and overnight charters, transforming your dreams of a lavish escape into a reality.',
  capacity: 10,
  price: 1000,
  location: 'Terminal D - Port of Miami, Miami',
  user: User.last
)
if boat1
  boat1.photo.attach(io: file, filename: "boat1.jpg", content_type: file.content_type)
  puts "Boat created successfully!"
  boat1.save
else
  puts "Failed to create boat: #{boat1.errors.full_messages.join(', ')}"
end


# BOAT 2 SEED

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692878953/Boat_3_jlq447.png")
boat2 = Boat.create(
  name: 'Bluesky',
  description: 'Welcome aboard the extraordinary Falcao 31m, a masterpiece of luxury and elegance nestled in the stunning harbor of Palma de Mallorca. Falcao 31m offers exceptional charter experiences, including 6-hour, 8-hour, and overnight charters, transforming your dreams of a lavish escape into a reality.',
  capacity: 10,
  price: 1000,
  location: 'Miami, FL',
  user: User.last
)

if boat2
  boat2.photo.attach(io: file, filename: "boat2.jpg", content_type: file.content_type)
  puts "Boat created successfully!"
  boat2.save
else
  puts "Failed to create boat: #{boat2.errors.full_messages.join(', ')}"
end

# BOAT 3 SEED

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692879171/boat6_x1hlht.jpg")
boat3 = Boat.create(
  name: 'Deepblue',
  description: 'Welcome aboard the extraordinary Falcao 31m, a masterpiece of luxury and elegance nestled in the stunning harbor of Palma de Mallorca. Falcao 31m offers exceptional charter experiences, including 6-hour, 8-hour, and overnight charters, transforming your dreams of a lavish escape into a reality.',
  capacity: 8,
  price: 500,
  location: 'Marina Green, San Francisco',
  user: User.first
)

if boat3
  boat3.photo.attach(io: file, filename: "boat3.jpg", content_type: file.content_type)
  puts "Boat created successfully!"
  boat3.save
else
  puts "Failed to create boat: #{boat3.errors.full_messages.join(', ')}"
end




#Boat 4

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692878953/Boat_1_d1vwp8.jpg")
boat4 = Boat.create(
  name: 'Royal Deep',
  description: 'Welcome aboard the extraordinary Falcao 31m, a masterpiece of luxury and elegance nestled in the stunning harbor of Palma de Mallorca. Falcao 31m offers exceptional charter experiences, including 6-hour, 8-hour, and overnight charters, transforming your dreams of a lavish escape into a reality.',
  capacity: 20,
  price: 2000,
  location: 'Ibiza',
  user: User.last
)

if boat4
  boat4.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Boat created successfully!"
  boat4.save
else
  puts "Failed to create boat: #{boat4.errors.full_messages.join(', ')}"
end
