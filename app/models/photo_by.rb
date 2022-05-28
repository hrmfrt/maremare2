class PhotoBy < ApplicationRecord
  has_many :photos, dependent: :destroy
end
