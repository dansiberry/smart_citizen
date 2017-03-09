class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :post_comments
  has_many :comments, through: :post_comments
  has_many :users, through: :user_posts
  has_many :user_posts

  validates :title, presence: true
  validates :category, presence: true
  validates :city, presence: true
  validates :neighbourhood, presence: true


  scope :by_category, -> (category) { where(category: category) }
  scope :by_neighbourhood, -> (neighbourhood) { where(neighbourhood: neighbourhood)}

  def self.all_categories
    self.all.map { |post| post.category }.select { |a| a.present? }.uniq.sort
  end
end
