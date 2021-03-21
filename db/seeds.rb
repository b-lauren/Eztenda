# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

# url = open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80')


puts "Cleaning database..."

User.destroy_all

Drink.destroy_all

Product.destroy_all

Tender.destroy_all

Bid.destroy_all

puts "Creating users...."

mandm_img = URI.open('http://www.edinburghwhiskyblog.com/wp-content/uploads/2019/09/Method-Madness-Header-article.jpg')
mandm = User.create!(email: "selling@mandm.com", password: "secret", company: "Method and Madness", address: "20-22 Elsley Rd, Great Titchfield St, Fitzrovia, London W1W 8BE", user_type: "Drinks brand - Sellers")
mandm.photo.attach(io: mandm_img, filename: 'mandm.png', content_type: 'image/jpg')

heineken_img = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Heineken_logo.svg/1920px-Heineken_logo.svg.png')
heineken = User.create!(email: "selling@heineken.com", password: "secret", company: "Heineken", address: "20-22 Elsley Rd, Great Titchfield St, Fitzrovia, London W1W 8BE", user_type: "Drinks brand - Sellers")
heineken.photo.attach(io: heineken_img, filename: 'heineken.png', content_type: 'image/png')

catandmutton_img = URI.open('https://www.catandmutton.com/wp-content/uploads/sites/50/2015/05/LOGONEW-710x194.png')
catandmutton = User.create!(email: "buying@catandmutton.com", password: "secret", company: "Cat and Mutton", address: "76 Broadway Market, Hackney, London E8 4QJ", user_type: "Venue - Buyers")
catandmutton.photo.attach(io: catandmutton_img, filename: 'catandmutton.png', content_type: 'image/png')

puts "Creating drinks...."

tequila = Drink.create!(type: "Tequila", description: "Spirit from mexico", unit_of_measurement: "Bottles")
tequila.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'tequila.jpeg', content_type: 'image/jpeg')

whiskey = Drink.create!(type: "Whiskey", description: "Whisky or whiskey is a type of distilled alcoholic beverage made from fermented grain mash or by distilling beer.", unit_of_measurement: "Bottles")
whiskey.photo.attach(io: open('https://images.unsplash.com/photo-1603596311111-b43c809e02a1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'whiskey.jpeg', content_type: 'image/jpeg')

wine = Drink.create!(type: "Wine", description: "Wine is an alcoholic drink typically made from fermented grape juice", unit_of_measurement: "Bottles")
wine.photo.attach(io: open('https://images.unsplash.com/photo-1553682544-4ccf2778c9a8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'wine.jpeg', content_type: 'image/jpeg')

vodka = Drink.create!(type: "Vodka", description: "Vodka is a clear distilled alcoholic beverage with different varieties originating in Poland, Russia and Sweden", unit_of_measurement: "Bottles")
vodka.photo.attach(io: open('https://images.unsplash.com/photo-1582903222004-6766a668447a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'vodka.jpeg', content_type: 'image/jpeg')

rum = Drink.create!(type: "Rum", description: "Rum is a liquor made by fermenting then distilling sugarcane molasses or sugarcane juice.", unit_of_measurement: "Bottles")
rum.photo.attach(io: open('https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'rum.jpeg', content_type: 'image/jpeg')

gin = Drink.create!(type: "Gin", description: "Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries", unit_of_measurement: "Bottles")
gin.photo.attach(io: open('https://images.unsplash.com/photo-1607182324626-7cd70522abc1?ixid=MXwxMjA3fDB8MHxwaG90[%E2%80%A6]VufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'), filename: 'gin.jpeg', content_type: 'image/jpeg')

beer = Drink.create!(type: "Beer", description: "Beer is one of the oldest and most widely consumed alcoholic drinks in the world, and the third most popular drink overall after water and tea.", unit_of_measurement: "Keg")
beer.photo.attach(io: open('https://images.unsplash.com/photo-1586993451228-09818021e309?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'beer.jpeg', content_type: 'image/jpeg')


puts "Creating products...."

madness = Product.create!(name: "Method and Madness Single Malt" , description: "The first Irish single malt from Midleton in a very long time – French Limousin oak adds floral aromatics while bourbon casks provide a toasted, nutty character. One to savour.", drink_id: whiskey.id)
madness.user_id = mandm.id
madness.photo.attach(io: open('https://images.unsplash.com/photo-1522877341927-e5dc72935d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'), filename: 'madness.jpeg', content_type: 'image/jpeg')

irish = Product.create!(name: "Irish Single Malt XO Part II", description: "Distilled at an unspecified location in Ireland, this is a deliciously fruity, malty whiskey that was bottled for the Belgian organisation The Nectar. Notes of banana, pears, rich malt, ginger and orange blossom.", drink_id: whiskey.id)
bushmills = Product.create!(name: "Bushmills 21 Year Old", description: "A mix of bourbon and sherry casks matured for 19 years before the last two years are spent finishing in ex-Madeira casks, this is the top of Bushmills' regular range.", drink_id: whiskey.id)
teeling = Product.create!(name: "Teeling Brabazon", description: "The second in Teeling's Brabazon series has been aged entirely in port casks of various sizes and which used to hold different vintages and styles of the Portuguese fortified wine. This offers a classic reddish tinge and notes of red fruit, vanilla and dark chocolate.", drink_id: whiskey.id)
greene = Product.create!(name: "Green Spot", description: "This historic single pot still Irish whiskey used only to be available in Dublin grocer Mitchell's, but now has spread across the world to huge acclaim. A delightful combination of fruit, toffee and malt.", drink_id: whiskey.id)
slane = Product.create!(name: "Slane Irish Whiskey", description: "Slane is a blended Irish whiskey aged in a combination of virgin-oak, refill-American-whiskey and oloroso-sherry casks. The result is an elegant and spicy dram with notes of caramel, dried fruit, caramel and butterscotch.", drink_id: whiskey.id)
cloak = Product.create!(name: "Clonakilty Single Grain", description: "A single grain Irish whiskey from Clonakilty, finished in ex-Bordeaux wine casks. Sweet aromas of raspberries, rhubarb and custard fill the nose, complimenting notes of strawberries, cream, honey and wood spice throughout the palate.", drink_id: whiskey.id)
connemara = Product.create!(name: "Connemara", description: "Thought peat was all about Islay? Think (or perhaps that should be 'drink') again. All Islay fans owe it to themselves to check out Connemara from the splendid Cooley distillery.", drink_id: whiskey.id)
waterford = Product.create!(name: "Waterford Ballykilcavan", description: "Ballykilcavan Edition 1.2 from Waterford is made with 100% Taberna barley grown by David Walsh-Kemmis west of the Barrow in County Laois. Distilled in 2016 and matured in a combination French and American oak casks for three months longer than Edition 1.1.", drink_id: whiskey.id)
corry = Product.create!(name: "JJ Corry The Flintlock", description: "Flintlock is JJ Corry's 16 year old single malt aged in 3 ex-bourbon casks. Only made in limited quantities. On the nose sweet vanilla, pear and white peach with hints of yellow flowers. The palate is soft and gentle with ripe pear and stone fruits, a lick of sweet spice and vanilla essence. The whiskey is named after a pistol found in the rafters of its 17th century tasting barn.", drink_id: whiskey.id)


