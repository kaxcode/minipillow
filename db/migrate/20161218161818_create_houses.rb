class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :number_of_beds
      t.integer :number_of_baths
      t.integer :year_built
      t.integer :sq_footage
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
