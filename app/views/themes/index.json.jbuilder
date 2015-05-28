json.array!(@themes) do |theme|
  json.extract! theme, :id, :description, :minutes
  json.url theme_url(theme, format: :json)
end
