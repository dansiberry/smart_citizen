# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/post_published
  def post_published
    PostMailer.post_published
  end

  def youve_been_tagged
    PostMailer.youve_been_tagged
  end

end
