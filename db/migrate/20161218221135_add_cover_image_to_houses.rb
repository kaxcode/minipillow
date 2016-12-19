class AddCoverImageToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :cover_image_id, :string
  end
end
