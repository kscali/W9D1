class ArtworksController < ApplicationController

    def index
        shared_art = Artwork.joins(:artwork_shares)
            .where("artwork_shares.viewer_id  = ? OR artworks.artist_id = ?", params[:user_id], params[:user_id])
        
        render json: shared_art
    end

    def create
        art = Artwork.new(artwork_params)
        if art.save!
            render json: art
        else
            render art.errors.full_error_messages, status: :unprocessable_entity
        end
    end

    def show
        art = Artwork.find(params[:id])
        render json: art
    end

    def update 
       art = Artwork.find(params[:id])
       art.update(artwork_params)
       render json: art
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render plain: "Artwork deleted."
    end

    def fave
       fav = Artwork.find(params[:id])

        if fav.fave_id
            render json: User.find(fav.fave_id)
        else
            render plain: "No favorites found."
        end
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id, :fave_id)
    end
end
