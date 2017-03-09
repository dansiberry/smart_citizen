class PoliticiansController < ApplicationController
  def show
    @user = UserAsPolitician.find(params[:id]).user
  end

  def destroy
    UserAsPolitician.find(current_user.as_politician.id).destroy
    redirect_to root_path
  end

  def index
    @politicians = UserAsPolitician.all.map{|a| a}.uniq
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
    redirect_to politician_path(@political_info)
  end

  private

  def user_as_politician_params
      params.require(:user_as_politician).permit(:elected, :political_party, :bio, :responsabilities, :photo, :photo_cache,:photo2, :photo2_cache,:photo3, :photo3_cache)
  end

  def politicans_params
    params.require(:user_as_politicians).permit(:office, :elected, :political_party, :responsabilities, :bio, :photo, :photo_cache)
  end


end
