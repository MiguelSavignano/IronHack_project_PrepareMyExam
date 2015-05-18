json.array!(@themes) do |theme|
  json.extract! theme, :id, :exam_id, :content, :hours
  json.url theme_url(theme, format: :json)
end
