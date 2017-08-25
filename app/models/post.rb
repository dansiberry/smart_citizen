class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  after_update :create_notifications, if: :verified_changed?
  after_update :send_notification_emails, if: :verified_changed?

  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :user_posts, dependent: :destroy

  has_many :comments, through: :post_comments, dependent: :destroy
  has_many :users, through: :user_posts

  has_many :notifications, dependent: :destroy

  accepts_nested_attributes_for :user
  acts_as_votable

  validates :title, presence: true, allow_blank: false
  validates :content, length: { minimum: 300, too_short: "Please describe the issue in at least 300 characters" }
  validates :category, presence: true, allow_blank: false
  validates :city, presence: true, allow_blank: false
  validates :neighbourhood, presence: true, allow_blank: false

  scope :by_category, -> (category) { where(category: category) }
  scope :by_neighbourhood, -> (neighbourhood) { where(neighbourhood: neighbourhood) }

  def has_politician?
    self.users.size > 0
  end

  def self.all_categories
    self.all.map { |post| post.category }.select { |a| a.present? }.uniq.sort
  end

  def self.verified_posts
    verified_post_array = self.where(verified: true).select { |post| post.user.confirmed? }
    self.where(id: verified_post_array.pluck(:id))
  end

  def create_notifications
    self.users.each do |tagged_politician|
      self.notifications.create(user: tagged_politician)
    end
  end

  def send_notification_emails
    PostMailer.post_published(self).deliver_now
    PostMailer.youve_been_tagged(self).deliver_now
  end

  def send_response_email
    PostMailer.response_received(self).deliver_now
  end
end
