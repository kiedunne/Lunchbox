class AddUsernametoSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :username, :string
  end
end
