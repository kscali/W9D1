class Addfavs < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :fave_id, :integer
    add_column :artwork_shares, :user_fave_id, :integer
  end
end
