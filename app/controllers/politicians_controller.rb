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
end
