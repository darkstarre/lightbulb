class CommentsController < ApplicationController
  
  def create

    comment = Comment.create(body: params[:comment][:body],:idea_id => params[:idea_id])
    redirect_to idea_path(comment.idea_id)
  end
end


