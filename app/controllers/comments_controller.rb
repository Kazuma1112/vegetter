class CommentsController < ApplicationController
  def create
    @comment =Comment.create(text: comment_params[:text], vegetable_id: comment_params[:vegetable_id], user_id: current_user.id)
    redirect_to "/vegetables/#{@comment.vegetable.id}"
  end

  def comment_params
    params.permit(:text, :vegetable_id)
  end
end
