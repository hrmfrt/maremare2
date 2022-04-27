class CategorySecond < ApplicationRecord
  has_many :creatures, dependent: :destroy
  belongs_to :category
end
