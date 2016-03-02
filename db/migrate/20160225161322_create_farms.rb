class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone_number
      t.string :fb_url
      t.string :instagram_url
      t.string :website
      t.text :bio
      t.string :owner
      t.string :video_url
      t.string :practices_followed

      t.timestamps null: false
    end
  end
end
