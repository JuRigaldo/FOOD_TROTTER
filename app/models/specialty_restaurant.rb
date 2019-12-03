class SpecialtyRestaurant < ApplicationRecord
  belongs_to :specialty
  belongs_to :restaurant
end
