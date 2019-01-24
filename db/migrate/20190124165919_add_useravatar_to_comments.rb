class AddUseravatarToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :useravatar, :string
  end
end
