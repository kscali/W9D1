
class UsersController < ApplicationController

    def index
        user = User.all
        render json: user
        # render plain: "hellooooo"
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

    private
    def user_params
        params.require(:user).permit(:username)
    end

end
