class ColumnedBy < ApplicationRecord
  has_many :creatures, dependent: :destroy
end
