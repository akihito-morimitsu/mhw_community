class CommentsController < ApplicationController
  
  def create
    @micropost = Micropost.where(comment_params[:micropost_id])
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save!
    redirect_to micropost_path(comment_params[:micropost_id])
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:micropost_id, :body)
  end
end