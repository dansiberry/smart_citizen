class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    email_image
    I18n.with_locale(@user.locale) do
      mail(
        to: @user.email,
        subject: I18n.t('user_mailer.welcome.subject')
        )
    end
  end

  private

  def email_image
    attachments.inline["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
  end

end
