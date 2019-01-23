class AddLatitudeToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :latitude, :decimal
  end
end
