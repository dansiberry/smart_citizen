class PoliticiansController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    @politician = @user.as_politican || @user.create_as_politician
  end

  def update
  end

  def politicans_params
    params.require(:user_as_politicians).permit(:office, :elected, :political_party, :responsabilities, :bio, :photo, :photo_cache)
  end


end
