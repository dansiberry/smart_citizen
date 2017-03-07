class PostsController < ApplicationController
  def new
    @post = Post.new
    @neighbourhoods = ["Eixample", "Sant Marti", "Gracia", "Ciutat Vella", "Sants-Montjuïc", "Sarrià-Sant Gervasi", "Les Corts", "Horta-Guinardó", "Nou Barris", "Sant Andreu"]
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
  end

  def index
    @posts = Post.all
    @posts = @posts.by_neighbourhood(params[:neighbourhood]) if params[:neighbourhood].present?
    @list_categories = Post.all_categories
    if params[:category].present?
      @posts = Post.by_category(params[:category])
    else
      @posts
    end
  end

  def destroy
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :city, :neighbourhood,:photo, :photo_cache,:photo2, :photo2_cache,:photo3, :photo3_cache)
  end
end
