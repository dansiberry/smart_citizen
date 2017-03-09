class UserAsPolitician < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  def default_picture_url
    "http://cache-graphicslib.viator.com/graphicslib/thumbs360x240/2512/SITours/barcelona-modernism-and-gaudi-walking-tour-in-barcelona-168394.jpg"
  end
end
