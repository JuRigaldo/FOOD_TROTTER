class Specialty < ApplicationRecord
  has_many :specialty_restaurants, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :country, presence: true

  # acts_as_taggable
  acts_as_taggable_on :categories, :timetoeats

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:country, :city, :region],
    associated_against: {
      timetoeats: [:name],
      categories: [:name]
    },
    using: {
      tsearch: {any_word: true}
    }

  $categories = ["Accompagnement", "Burger", "Curry", "Dessert", "Fruits de mer", "Friture", "Insectes", "Nouilles", "Oeuf", "Pain", "Pâtes", "Poisson", "Ragoût", "Ravioli", "Riz", "Sandwich", "Snack", "Soupe", "Street food", "Viande", "Volaille"]
  $timetoeats = ["Petit-déjeuner", "Déjeuner/ Dîner", "Goûter", "Boire"]
end
