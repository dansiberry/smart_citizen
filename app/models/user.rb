class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :posts
  has_one :as_politician, :class_name => :UserAsPolitician, :foreign_key => "user_id"
end
