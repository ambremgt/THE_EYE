class Shotlist < ApplicationRecord
  belongs_to :user
  has_many :shots

  acts_as_taggable_on :shotlist_tags
end
