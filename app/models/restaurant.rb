class Restaurant < ApplicationRecord
  has_many :specialty_restaurants, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true
end
