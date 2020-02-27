class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_taggable_on :interests
  INTERESTS = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Drone", "Trans-trav", "Urban", "Street", "City", "Mountains", "Nature", "GoPro", "4KVideoCamera", "Sliders", "Shotgun", "Documentary"]
  has_many :shotlists
  has_one_attached :photo
  has_many :portfolio_assets


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
