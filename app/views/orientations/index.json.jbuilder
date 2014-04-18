json.array!(@orientations) do |orientation|
  json.extract! orientation, :id, :date
  json.url orientation_url(orientation, format: :json)
end
