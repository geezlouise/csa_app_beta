json.array!(@boxes) do |box|
  json.extract! box, :id, :name, :contents, :description, :price, :length_of_time, :start_date, :end_date, :farm_id
  json.url box_url(box, format: :json)
end
