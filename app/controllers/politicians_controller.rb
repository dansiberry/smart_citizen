class PoliticiansController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    @politician = @user.as_politican || UserAsPolitican.new
  end

  def update
    @user = current_user
    @political_info = UserAsPolitician.new(user_as_politician_params)
    @user.as_politician = @political_info
    @political_info.save
    redirect_to politicican_path(@politician)
  end

  private

  def user_as_politician_params
      params.require(:UserAsPolitician).permit(:elected, :political_party, :bio, :responsabilities, :photo, :photo_cache,:photo2, :photo2_cache,:photo3, :photo3_cache)
  end

  def politicans_params
    params.require(:user_as_politicians).permit(:office, :elected, :political_party, :responsabilities, :bio, :photo, :photo_cache)
  end


end
