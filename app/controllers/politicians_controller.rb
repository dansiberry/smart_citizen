class PoliticiansController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home, :show, :index ]

  def show
    @user_as_politician = UserAsPolitician.find(params[:id])
    @user = @user_as_politician.user
    authorize @user
    authorize @user_as_politician
  end

  def destroy
    UserAsPolitician.find(current_user.as_politician.id).destroy
    redirect_to root_path
  end

  def index
    if params[:filter]
      @politicians = policy_scope(UserAsPolitician).all
    else
      @politicians = policy_scope(UserAsPolitician).where(elected: true)
    end
    # @politicians = policy_scope(UserAsPolitician).all.map{|a| a}.uniq
  end

  def new
    @user_as_politician = UserAsPolitician.new
    @user_as_politician.user = current_user
    authorize @user_as_politician
  end

  def create

    @user_as_politician = UserAsPolitician.new(user_as_politician_params)
    authorize @user_as_politician
    @user_as_politician.user = current_user

    current_user.attributes = user_as_politician_params['user_attributes']

    if @user_as_politician.save
      redirect_to politician_path(@user_as_politician)
    else
      render :new
    end
  end

  def edit
    @user_as_politician = UserAsPolitician.find(params[:id])
    @user = @user_as_politician.user
    authorize @user
    authorize @user_as_politician
  end

  def update

    user_as_politician = UserAsPolitician.find(params[:id])
    authorize user_as_politician
    user_as_politician.update(user_as_politician_params)
    redirect_to politician_path(params[:id])
  end

  def destroy
    political_info = UserAsPolitician.find(current_user.as_politician.id)
    authorize political_info
    political_info.destroy
    redirect_to root_path
  end

  private

  def user_as_politician_params
    params.require(:user_as_politician).permit(:elected, :filter, :political_party, :office, :bio, :responsabilities, :photo, :photo_cache, :twitter_handle, :user_attributes => [:first_name, :last_name, :neighbourhood, :address, :city, :email])
  end

end
