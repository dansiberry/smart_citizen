class PoliticiansController < ApplicationController
  def show
    @user = UserAsPolitician.find(params[:id]).user
    authorize @user
  end

  def edit
    @user = current_user
    @political_info = @user.as_politician || UserAsPolitician.new(user_id: current_user.id)

    authorize @user
    authorize @political_info
  end

  def update
    @user = current_user
    authorize @user
    @political_info = UserAsPolitician.new(user_as_politician_params)
    @political_info.user = current_user
    authorize @political_info
    @political_info.save
    @user.save
    redirect_to politician_path(@political_info)
  end

  def destroy
    political_info = UserAsPolitician.find(current_user.as_politician.id)
    authorize political_info
    political_info.destroy
    redirect_to root_path
  end

  private

  def user_as_politician_params
    params.require(:user_as_politician).permit(:elected, :elected, :political_party, :bio, :responsabilities, :photo, :photo_cache)
  end

end
