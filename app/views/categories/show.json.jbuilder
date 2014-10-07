json.array!(@category.facts) do |fact|
  json.extract! fact, :id, :info
end
