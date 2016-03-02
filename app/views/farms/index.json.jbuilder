json.array!(@farms) do |farm|
  json.extract! farm, :id, :name, :address, :city, :state, :zip, :email, :phone_number, :fb_url, :instagram_url, :website, :bio, :owner, :video_url, :practices_followed
  json.url farm_url(farm, format: :json)
end
