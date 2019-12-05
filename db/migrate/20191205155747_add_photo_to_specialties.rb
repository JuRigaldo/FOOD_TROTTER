class AddPhotoToSpecialties < ActiveRecord::Migration[5.2]
  def change
    add_column :specialties, :photo, :string
  end
end
