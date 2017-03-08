class UserAsPolitician < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  def initialize
    if !self.photo.url.nil
    self.remote_photo_url = "http://downloadicons.net/sites/default/files/user-group-icon-32334.png"
    end
  end


end
