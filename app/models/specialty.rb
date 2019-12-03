class Specialty < ApplicationRecord
  has_many :specialty_restaurants, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :country, presence: true
end
