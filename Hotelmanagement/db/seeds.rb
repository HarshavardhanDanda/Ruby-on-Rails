# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels=Hotel.create([
  {hotel_name: "hotel1", hotel_address: "paris"},
  {hotel_name: "hotel2", hotel_address: "new york"},
  {hotel_name: "hotel3", hotel_address: "chicago"}
])

rooms=Room.create([
  {room_no:305}
])