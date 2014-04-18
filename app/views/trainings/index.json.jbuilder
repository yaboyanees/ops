json.array!(@trainings) do |training|
  json.extract! training, :id, :name, :certification_date
  json.url training_url(training, format: :json)
end
