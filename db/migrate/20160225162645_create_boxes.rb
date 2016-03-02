class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :contents
      t.text :description
      t.decimal :price
      t.integer :length_of_time
      t.date :start_date
      t.date :end_date
      t.integer :farm_id

      t.timestamps null: false
    end
  end
end
