class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :posts
  has_many :user_posts
  has_many :tagged_in, :class_name => :Post, through: :user_posts, :foreign_key => "post_id", source: :post
  has_one :as_politician, :class_name => :UserAsPolitician, :foreign_key => "user_id"
end
