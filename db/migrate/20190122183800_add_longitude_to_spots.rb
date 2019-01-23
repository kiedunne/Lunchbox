class AddLongitudeToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :longitude, :decimal
  end
end
