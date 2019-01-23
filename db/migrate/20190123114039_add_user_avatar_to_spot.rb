class AddUserAvatarToSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :avatar, :string
  end
end
