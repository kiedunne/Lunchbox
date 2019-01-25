class CommentsController < ApplicationController

  def create
    @spot = Spot.find(params[:spot_id])
    @comment = @spot.comments.create(merge_params)
    redirect_to spot_path(@spot)
  end

  def destroy
    @post = Spot.find(params[:spot_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to spot_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def merge_params
    comment_params.merge(username: current_user.username, user_id: current_user.id, useravatar: current_user.avatar)
  end
end
