class Photo < ApplicationRecord
  belongs_to :photo_sets, optional: true
  belongs_to :creature 
  belongs_to :photo_by
  belongs_to :aquarium
end
