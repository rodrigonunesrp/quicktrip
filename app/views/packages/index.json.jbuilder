json.array!(@packages) do |package|
  json.extract! package, :id, :package_type_id, :description, :link
  json.url package_url(package, format: :json)
end
