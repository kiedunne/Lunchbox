class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :spot
      t.text :time
      t.text :location
      t.text :info

      t.timestamps
    end
  end
end
