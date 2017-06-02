class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]
  has_many :comments
  has_many :posts
  has_many :user_posts
  has_many :tagged_in, :class_name => :Post, through: :user_posts, :foreign_key => "post_id", source: :post
  has_one :as_politician, :class_name => :UserAsPolitician, :foreign_key => "user_id", dependent: :destroy



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
end

