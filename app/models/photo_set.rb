class PhotoSet < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many_attached :image_sets, dependent: :destroy
end
