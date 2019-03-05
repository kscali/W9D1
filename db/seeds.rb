# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# bob = User.create!(username: "bob")
# bop = User.create!(username: "bop")
# bot = User.create!(username: "bot")

# bog = User.create!(username: "bog")
# boa = User.create!(username: "boa")
# boob = User.create!(username: "boob")

Artwork.create!(title: "woahhh", image_url: "imgurl", artist_id: 5)
Artwork.create!(title: "wh", image_url: "imguxbbrl", artist_id: 4)
Artwork.create!(title: "title", image_url: "imthisisaurl", artist_id: 7)
Artwork.create!(title: "hello.....", image_url: "himgurl", artist_id: 6)

ArtworkShare.create!(artwork_id: 1, viewer_id: 4)
ArtworkShare.create!(artwork_id: 2, viewer_id: 6)
ArtworkShare.create!(artwork_id: 3, viewer_id: 5)
ArtworkShare.create!(artwork_id: 4, viewer_id: 7)

