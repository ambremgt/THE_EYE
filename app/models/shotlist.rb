class Shotlist < ApplicationRecord
  belongs_to :user
  has_many :shots
end
