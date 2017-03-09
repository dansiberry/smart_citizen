class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user = current_user
    post.save
    redirect_to post_path(post)
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @related_posts = Post
    @related_posts = @related_posts.by_category(@post.category)
  end

  def index
    @list_categories = Post.all_categories

    @posts = Post

    if params[:neighbourhood].present?
      @posts = @posts.by_neighbourhood(params[:neighbourhood])
    elsif user_signed_in? && params[:neighbourhood].blank?
      @posts = @posts.by_neighbourhood(current_user.neighbourhood)
    else
      @posts = Post.all
    end

    if params[:category].present?
      @posts = @posts.by_category(params[:category])
    end
  end

  def destroy
  end

  def update
  end

  private

  def post_params
      params.require(:post).permit(:title, :content, :category, :city, :neighbourhood, :photo, :photo_cache)
  end
end
