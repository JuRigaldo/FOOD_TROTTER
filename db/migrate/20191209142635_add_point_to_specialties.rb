class AddPointToSpecialties < ActiveRecord::Migration[5.2]
  def change
    add_column :specialties, :point, :integer
  end
end
