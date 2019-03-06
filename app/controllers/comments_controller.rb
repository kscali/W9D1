class CommentsController < ApplicationController


  def index
     if comment_params[:user_id]
        comment = Comment.where("comments.user_id = ?", comment_params[:user_id])

     elsif comment_params[:artwork_id]
        comment = Comment.where("comments.artwork_id = ?", comment_params[:artwork_id])
     end

     render json: comment 
  end


  def create 
    comment = Comment.new(comment_params)
    if comment.save!
        render json: comment
    else
        render comment.errors.full_error_messages, status: :unprocessable_entity
    end
  end 


  def destroy 
    comment = Comment.find(params[:id])
    comment.destroy
    render plain: "Comment deleted."
  end 

    private 
    def comment_params
        params.require(:comment).permit(:user_id, :artwork_id, :body)
    end

end
