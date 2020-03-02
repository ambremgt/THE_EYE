class Shotlist < ApplicationRecord
  belongs_to :user
  has_many :shots

  TAGS = ["landscapes", "seascapes", "architecture", "Timelapse", "Macro", "StopMotion", "Drone", "Trans-trav", "Urban", "Street", "City", "Mountains", "Nature", "GoPro", "4KVideoCamera", "Sliders", "Shotgun", "Documentary"]

  acts_as_taggable_on :shotlist_tags
end
