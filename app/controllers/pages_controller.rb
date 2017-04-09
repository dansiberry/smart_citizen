class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us ]

   def home
    @posts = Post.all
    @upvoted_posts = @posts.sort_by {|a| a.votes_for.size}
    @upvoted_posts = @upvoted_posts.reverse
    @upvoted_posts = @upvoted_posts.first(3)
   end

   def about_us
   end
end

