json.array!(@facts) do |fact|
  json.extract! fact, :id, :info, :category_id
  json.url fact_url(fact, format: :json)
end
