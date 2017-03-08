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
    @list_categories = Post.all_categories
    if params[:category].present?
      @posts = Post.by_category(params[:category])
    else
      @posts = Post.all
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
