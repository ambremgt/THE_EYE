class Shotlist < ApplicationRecord
  belongs_to :user
  has_many :shots

  TAGS = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Drone", "Trans-trav", "Urban", "Mountains", "Nature", "GoPro", "4K Video Camera", "Sliders", "Documentary"]

  acts_as_taggable_on :shotlist_tags
end
