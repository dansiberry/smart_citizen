class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    authorize @comment
    @post = Post.find(params[:post_id])
    authorize @post
  end

  def create
    comment = Comment.new(comments_params)
    authorize comment
    comment.user = current_user
    post = Post.find(params[:post_id])
    authorize post
    post.comments << comment
    comment.save
    # post.send_response_email
    redirect_to post_path(Post.find(params[:post_id]))
  end

  def edit
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def update
    @comment = Comment.find(params[:id])
    authorize @comment
    if @comment.update(comments_params)
      redirect_to @comment
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def comments_params
    params.require(:comment).permit(:content)
  end
end
