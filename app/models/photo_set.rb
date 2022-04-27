class PhotoSet < ApplicationRecord
  has_many :photos
  has_many_attached :image_sets
end
