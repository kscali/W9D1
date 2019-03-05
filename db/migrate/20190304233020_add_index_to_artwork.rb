class AddIndexToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, :title 
  end
end
