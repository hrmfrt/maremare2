class Creature < ApplicationRecord
  belongs_to :category_second
  belongs_to :columned_by
  has_many :photos, dependent: :destroy
end
