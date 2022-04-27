class Aquarium < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :fees, dependent: :destroy
end
