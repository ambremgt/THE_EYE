class Shotlist < ApplicationRecord
  belongs_to :user
  has_many :shots

  TAGS = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Drone", "Trans-trav", "Urban", "Street", "City", "Mountains", "Nature", "GoPro", "4K Video Camera", "Sliders", "Shotgun", "Documentary"]

  acts_as_taggable_on :shotlist_tags
end
