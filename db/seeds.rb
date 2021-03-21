# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

# url = open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80')


puts "Cleaning database..."

User.destroy_all

Drink.destroy_all

puts "Creating users...."

heineken = User.create!(email: "selling@heineken.com", password: "secret", company: "Heineken", address: "20-22 Elsley Rd, Great Titchfield St, Fitzrovia, London W1W 8BE")
catandmutton = User.create!(email: "buying@catandmutton.com", password: "secret", company: "Cat and Mutton", address: "76 Broadway Market, Hackney, London E8 4QJ")

puts "Creating drinks...."

tequila = Drink.create!(type: "Tequila", description: "Spirit from mexico", unit_of_measurement: "Bottles")
tequila.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'tequila.jpeg', content_type: 'image/jpeg')
whiskey = Drink.create!(type: "Whiskey", description: "Whisky or whiskey is a type of distilled alcoholic beverage made from fermented grain mash or by distilling beer.", unit_of_measurement: "Bottles")
whiskey.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'whiskey.jpeg', content_type: 'image/jpeg')
wine = Drink.create!(type: "Wine", description: "Wine is an alcoholic drink typically made from fermented grape juice", unit_of_measurement: "Bottles")
wine.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'wine.jpeg', content_type: 'image/jpeg')
vodka = Drink.create!(type: "Vodka", description: "Vodka is a clear distilled alcoholic beverage with different varieties originating in Poland, Russia and Sweden", unit_of_measurement: "Bottles")
vodka.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'vodka.jpeg', content_type: 'image/jpeg')
rum = Drink.create!(type: "Rum", description: "Rum is a liquor made by fermenting then distilling sugarcane molasses or sugarcane juice.", unit_of_measurement: "Bottles")
rum.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'rum.jpeg', content_type: 'image/jpeg')
gin = Drink.create!(type: "Gin", description: "Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries", unit_of_measurement: "Bottles")
gin.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'gin.jpeg', content_type: 'image/jpeg')
beer = Drink.create!(type: "Beer", description: "Beer is one of the oldest and most widely consumed alcoholic drinks in the world, and the third most popular drink overall after water and tea.", unit_of_measurement: "Keg")
beer.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'beer.jpeg', content_type: 'image/jpeg')

puts "Creating products...."

