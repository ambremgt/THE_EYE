class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_taggable_on :interests
  INTERESTS = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Architecture", "Timelapse", "Drone", "Trans-trav", "Urban", "Street", "Architecture", "City", "Mountains", "Nature", "Timelapse", "GoPro", "4KVideoCamera", "Sliders", "Drone", "Shotgun", "Documentary"]

  has_one_attached :photo
  has_many :portfolio_assets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
