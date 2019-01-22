class AddUserIdtoSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :user_id, :int
  end
end
