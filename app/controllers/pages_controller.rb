class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    lastrecord = Post.last
    @postrand = []
    3.times do
      post = Post.rand(1..lastrecord)
      @postsrand << post
    end
  end

end
