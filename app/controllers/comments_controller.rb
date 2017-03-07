class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    comment = Comment.new(comments_params)
    comment.user = current_user
    post = Post.find(params[:post_id])
    comment.posts << post
    post.comments << comment
    comment.save
    redirect_to post_path(Post.find(params[:post_id]))
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comments_params
      params.require(:comment).permit(:content)
  end
end
