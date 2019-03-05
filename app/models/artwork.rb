class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :artist_id, message: "Must have a unique title" }
  validates :image_url, presence: true 
  validates :artist_id, presence: true 

  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: :User 

  has_many :artwork_shares, 
    class_name: :ArtworkShare, 
    foreign_key: :artwork_id

  has_many :shared_viewers,
  through: :artwork_shares,
  source: :viewer


end
