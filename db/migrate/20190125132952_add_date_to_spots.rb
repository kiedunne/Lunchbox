class AddDateToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :date, :datetime
  end
end
