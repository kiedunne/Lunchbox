class AddStringDatetoSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :datestring, :string
  end
end
