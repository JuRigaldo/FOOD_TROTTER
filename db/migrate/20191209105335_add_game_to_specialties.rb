class AddGameToSpecialties < ActiveRecord::Migration[5.2]
  def change
    add_column :specialties, :game, :integer
  end
end
