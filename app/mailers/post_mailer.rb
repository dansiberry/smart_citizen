class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_published.subject
  #
  def post_published(post)
    @post = post

    I18n.with_locale(@post.user.locale) do
      mail(
        to: @post.user.email,
        subject: I18n.t('post_mailer.post_published.subject')
        )
    end
  end

  def youve_been_tagged(post)
    @post = post

    I18n.with_locale("es") do
      mail(
        to: @post.users.pluck(:email),
        subject: I18n.t('post_mailer.youve_been_tagged.subject', neighbourhood: @post.user.neighbourhood)
        )
    end
  end
end
