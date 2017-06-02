class UserAsPolitician < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :user

  validates :political_party, presence: true
  validates :office, presence: true
  validates :elected, presence: true

  def default_picture_url
    "http://www.iconsfind.com/wp-content/uploads/2015/08/20150831_55e46b1c0c44b.png"
  end
end
