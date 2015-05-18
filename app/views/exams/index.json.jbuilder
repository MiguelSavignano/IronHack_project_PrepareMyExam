json.array!(@exams) do |exam|
  json.extract! exam, :id, :description, :date
  json.url exam_url(exam, format: :json)
end
