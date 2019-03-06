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

# Artwork.create!(title: "woahhh", image_url: "imgurl", artist_id: 5)
# Artwork.create!(title: "wh", image_url: "imguxbbrl", artist_id: 4)
# Artwork.create!(title: "title", image_url: "imthisisaurl", artist_id: 7)
# Artwork.create!(title: "hello.....", image_url: "himgurl", artist_id: 6)

# ArtworkShare.create!(artwork_id: 1, viewer_id: 4)
# ArtworkShare.create!(artwork_id: 2, viewer_id: 6)
# ArtworkShare.create!(artwork_id: 3, viewer_id: 5)
# ArtworkShare.create!(artwork_id: 4, viewer_id: 7)

# Comment.create!(user_id: 7, artwork_id: 1 , body: "nice" )
# Comment.create!(user_id: 6, artwork_id: 2, body: "super" )
# Comment.create!(user_id: 4, artwork_id: 3, body: "awesome")
# Comment.create!(user_id: 5, artwork_id: 1, body: "great" )
# Comment.create!(user_id: 4, artwork_id: 4, body: "ugh.")

# Like.create!(user_id: 4, likeable_type: "Comment", likeable_id: 1)
# Like.create!(user_id: 6, likeable_type: "Comment", likeable_id: 1)
# Like.create!(user_id: 5, likeable_type: "Comment", likeable_id: 2)

# Like.create!(user_id: 4, likeable_type: "Artwork", likeable_id: 1)
# Like.create!(user_id: 4, likeable_type: "Artwork", likeable_id: 2)
# Like.create!(user_id: 5, likeable_type: "Artwork", likeable_id: 4)
# Like.create!(user_id: 6, likeable_type: "Artwork", likeable_id: 3)

Artwork.create!(title: "woahhh.", image_url: "imgurl.", artist_id: 5, fave_id: 5)
Artwork.create!(title: "wh.", image_url: "imguxbbrl.", artist_id: 4, fave_id: 4)
Artwork.create!(title: "title.", image_url: "imthisisaurl.", artist_id: 7, fave_id: 7)
Artwork.create!(title: ".hello.....", image_url: "himgurl.", artist_id: 6, fave_id: 6)

ArtworkShare.create!(artwork_id: 1, viewer_id: 4, user_fave_id: 7)
ArtworkShare.create!(artwork_id: 2, viewer_id: 6, user_fave_id: 5)
ArtworkShare.create!(artwork_id: 3, viewer_id: 5, user_fave_id: 7)
ArtworkShare.create!(artwork_id: 4, viewer_id: 7, user_fave_id: 4)