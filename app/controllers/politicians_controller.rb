class PoliticiansController < ApplicationController
  def show
    @user_as_politician = UserAsPolitician.find(params[:id])
    @user = @user_as_politician.user
  end

  def destroy
    UserAsPolitician.find(current_user.as_politician.id).destroy
    redirect_to root_path
  end

  def edit
    @user_as_politician = UserAsPolitician.find(params[:id])
    @user = @user_as_politician.user
  end

  def update
    user_as_politician = UserAsPolitician.find(params[:id])
    user_as_politician.update(user_as_politician_params)

    redirect_to politician_path(params[:id])
  end

  private

  def user_as_politician_params
    params.require(:user_as_politician).permit(:elected, :political_party, :bio, :responsabilities, :photo, :photo_cache)
  end



end
