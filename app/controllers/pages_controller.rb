class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @postrand = []
    3.times do
      post = Post.first
      @postrand << post
    end
    @postrand
  end
end
