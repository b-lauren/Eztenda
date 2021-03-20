# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

User.destroy_all

puts "Creating users...."

heineken = User.create!(email: "selling@heineken.com", password: "secret", company: "Heineken", location: "20-22 Elsley Rd, Great Titchfield St, Fitzrovia, London W1W 8BE")
catandmutton = User.create!(email: "buying@catandmutton.com", password: "secret", company: "Cat and Mutton", location: "76 Broadway Market, Hackney, London E8 4QJ")
