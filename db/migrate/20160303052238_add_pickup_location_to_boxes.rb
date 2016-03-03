class AddPickupLocationToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :pickup_location, :text
  end
end
