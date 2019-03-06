
class UsersController < ApplicationController

    def index
    
        if params[:query]
            name = params[:query][1..-2]
            user = User.where("username = ?", name)
        else 
            user = User.all
        end
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save!
            render json: user
        else
            render user.errors.full_error_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update 
       user = User.find(params[:id])
       user.update(user_params)
       render json: user 
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render plain: "User deleted."
    end

    def fave
        art_id = ArtworkShare
        .where("artwork_shares.user_fave_id = ?", params[:id])
        .first
        .artwork_id

       fav = Artwork.find(art_id)

        if fav
            render json: fav
        else
            render plain: "No favorites found."
        end
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end

end
