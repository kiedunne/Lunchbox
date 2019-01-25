class AddNewExpiryToSpots < ActiveRecord::Migration[5.2]
  def change
    remove_column :spots, :expired
    add_column :spots, :expired, :boolean, default: false, null: false
  end
end
