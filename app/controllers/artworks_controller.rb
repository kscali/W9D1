class ArtworksController < ApplicationController

    def index
        art = Artwork.all
        render json: art
        # render plain: "hellooooo"
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
       render json: user 
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render plain: "Artwork deleted."
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
