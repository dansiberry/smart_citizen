class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # after_save :send_welcome_email
  acts_as_voter


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable,
  :omniauthable, omniauth_providers: [:twitter]
  has_many :user_posts, dependent: :destroy
  has_many :tagged_in, :class_name => :Post, through: :user_posts, :foreign_key => "post_id", source: :post

  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_one :as_politician, :class_name => :UserAsPolitician, :foreign_key => "user_id", dependent: :destroy
  has_many :notifications, dependent: :destroy

  def self.list_of_users_as_politicians
    user_ids = UserAsPolitician.all.map(&:user_id)
    self.where(id: user_ids)
  end

  def self.find_for_twitter_oauth(auth)
    user_params = {
      token: auth.credentials.token,
      provider: auth.provider,
      uid: auth.uid,
      twitter_picture_url: auth.info.image
    }

    user = User.where(provider: auth.provider, uid: auth.uid).first

    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.email = "#{auth.info.nickname}@email.com"
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    user
  end

  def send_devise_notification(notification, *args)
    I18n.with_locale(self.locale) { super(notification, *args) }
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now if self.confirmed_at_changed?
  end
end

