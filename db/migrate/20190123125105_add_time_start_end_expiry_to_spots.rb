class AddTimeStartEndExpiryToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :time_start, :datetime
    add_column :spots, :time_end, :datetime
    add_column :spots, :expired, :boolean
  end
end
