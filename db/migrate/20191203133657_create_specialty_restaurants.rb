class CreateSpecialtyRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :specialty_restaurants do |t|
      t.references :specialty, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
