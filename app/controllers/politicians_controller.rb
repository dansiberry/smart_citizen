class PoliticiansController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    @political_info = @user.as_politician || UserAsPolitician.new
  end

  def update
    @user = current_user
    @political_info = UserAsPolitician.new(user_as_politician_params)
    @political_info.user = current_user
    @political_info.save
    @user.save
    redirect_to politician_path(@political_info.id)
  end

  private

  def user_as_politician_params
      params.require(:user_as_politician).permit(:elected, :political_party, :bio, :responsabilities, :photo, :photo_cache,:photo2, :photo2_cache,:photo3, :photo3_cache)
  end
end
