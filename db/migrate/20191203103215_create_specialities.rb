class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :name
      t.string :description
      t.boolean :local
      t.string :country
      t.string :city
      t.string :region

      t.timestamps
    end
  end
end
