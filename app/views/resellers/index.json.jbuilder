json.array!(@resellers) do |reseller|
  json.extract! reseller, :name
  json.url reseller_url(reseller, format: :json)
end
