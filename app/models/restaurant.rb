class Restaurant < ApplicationRecord
  has_many :specialty_restaurants, dependent: :destroy
end
