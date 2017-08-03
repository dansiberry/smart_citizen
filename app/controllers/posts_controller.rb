class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index, :new, :create ]

  def new
    @post = Post.new(category: params[:category])
    authorize @post
  end

  def create
    if post_params['@user'].present?
      @post = Post.new(post_params.except('@user'))
      authorize @post
      @user = User.new(post_params['@user'])
      @user.save
      @post.user = @user
      saved = @post.save
      sign_in(@user, scope: :user)
    else
      @post = Post.new(post_params)
      authorize @post
      @post.user = current_user
      saved = @post.save
    end

    if saved
      list_user_ids = (params[:post][:users]  || []).select {|i| i.present? }

      list_user_ids.each do |user_id|
        @post.user_posts.create(user_id: user_id)
      end
    end

    if saved and @post.has_politician?
      flash[:notice] = "This issue is not live on the site until you confirm your address. Check your inbox." if @post.user.confirmed? == false
      redirect_to post_path(@post)
    else
      @post.destroy
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  def show
    @post = Post.find(params[:id])
     authorize @post
    # this is for the related posts
    @related_posts = Post.verified_posts
    @related_posts = @related_posts.by_category(@post.category).to_a
    @related_posts = @related_posts.delete_if { |related_post| related_post.id == @post.id }
  end

  def index
    @list_categories = Post.all_categories

    @posts = policy_scope(Post)
    @posts = Post.verified_posts

    if params[:neighbourhood].present?
      @posts = @posts.by_neighbourhood(params[:neighbourhood])
    # elsif user_signed_in? && params[:neighbourhood].blank?
    #   @posts = @posts.by_neighbourhood(current_user.neighbourhood)
    else
      @posts = Post.verified_posts
    end

    if params[:category].present?
      @posts = @posts.by_category(params[:category])
    end
    if params[:favorites]
      @favorites = true
    end
    if params[:liked]
      @posts = @posts.select {|a| current_user.voted_up_on?(a)}
      @favorites = true
      @liked = true
    end
    if params[:myposts]
      @posts = @posts.select {|a| a.user == current_user}
      @favorites = true
      @myposts = true
    end
    @posts = @posts.sort_by {|a| a.votes_for.size}.reverse
  end

  def destroy
    @post = Post.find(params[:id])
    authorize @post
    @post.destroy
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
#      create_notifications(@post) if @post.verified_changed?
      redirect_to @post
    else
      render :edit
    end
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to :back
    authorize @post
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to :back
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :city, :neighbourhood, :photo, :photo_cache, :users, :@user => [:first_name, :last_name, :neighbourhood, :address, :city, :email, :password, :password_confirmation])
  end

end
