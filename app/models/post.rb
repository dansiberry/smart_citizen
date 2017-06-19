class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  after_update :create_notifications, if: :verified_changed?

  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :user_posts, dependent: :destroy

  has_many :comments, through: :post_comments, dependent: :destroy
  has_many :users, through: :user_posts

  has_many :notifications, dependent: :destroy

  accepts_nested_attributes_for :user
  acts_as_votable

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 300, too_short: "Please describe the issue in at least 300 characters" }
  validates :category, presence: true
  validates :city, presence: true
  validates :neighbourhood, presence: true

  scope :by_category, -> (category) { where(category: category) }
  scope :by_neighbourhood, -> (neighbourhood) { where(neighbourhood: neighbourhood) }
  scope :verified_posts, -> { where(verified: true) }

  def has_politician?
    self.users.size > 0
  end

  def self.all_categories
    self.all.map { |post| post.category }.select { |a| a.present? }.uniq.sort
  end

  def create_notifications
    self.users.each do |tagged_politician|
      self.notifications.create(user: tagged_politician)
    end
  end
end
