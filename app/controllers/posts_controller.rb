class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]

  def new
    @post = Post.new
    authorize @post
  end

  def create
    post = Post.new(post_params)
    authorize post
    post.user = current_user
    post.save
    post.user_posts.create(user_id: params[:post][:users])

    redirect_to post_path(post)
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  def show
    @post = Post.find(params[:id])
     authorize @post
    # this is for the related posts
    @related_posts = Post
    @related_posts = @related_posts.by_category(@post.category).to_a
    @related_posts = @related_posts.delete_if { |related_post| related_post.id == @post.id }
  end

  def index
    @list_categories = Post.all_categories

    @posts = policy_scope(Post)

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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :city, :neighbourhood, :photo, :photo_cache)
  end
end
