class ArtworksharesController < ApplicationController

    def create
        shares = ArtworkShare.new(artworkshare_params)
        if shares.save!
            render json: shares
        else
            render shares.errors.full_error_messages, status: :unprocessable_entity
        end
    end

    def destroy
        share = ArtworkShare.find(params[:id])
        render json: share
        share.destroy
        render plain: "Artwork unshared with user."
    end


    private
    def artworkshare_params
        params.require(:artshares).permit(:artwork_id, :viewer_id)
    end
    
end
