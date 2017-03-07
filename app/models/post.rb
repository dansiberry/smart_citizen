class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments
  has_many :comments, through: :post_comments

  scope :by_category, -> (category) { where(category: category) }
  scope :by_neighbourhood, -> (neighbourhood) { where(neighbourhood: neighbourhood)}

  def self.all_categories
    self.all.map { |post| post.category }.uniq.sort
  end
end
