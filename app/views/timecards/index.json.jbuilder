json.array!(@timecards) do |timecard|
  json.extract! timecard, :id, :checkin_time, :checkout_time
  json.url timecard_url(timecard, format: :json)
end
