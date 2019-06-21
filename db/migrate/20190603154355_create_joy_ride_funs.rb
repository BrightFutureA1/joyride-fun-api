class CreateJoyRideFuns < ActiveRecord::Migration[5.2]
  def change
    create_table :joy_ride_funs do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :comments

      t.timestamps
    end
  end
end
