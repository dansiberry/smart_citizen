class PoliticansController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  private

  def politicans_params
    params.require(:user_as_politicans).permit(:office, :elected, :political_party, :responsabilities, :bio, :photo, :photo_cache)
  end

end
