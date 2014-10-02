json.array!(@facts) do |fact|
  json.extract! fact, :id, :info
  json.url fact_url(fact, format: :json)
end
