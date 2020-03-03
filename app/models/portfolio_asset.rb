class PortfolioAsset < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_one :poster_picture
end
