class Category < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :category_seconds, dependent: :destroy
end
