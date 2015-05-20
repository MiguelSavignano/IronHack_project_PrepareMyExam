json.array!(@study_sessions) do |study_session|
  json.extract! study_session, :id, :date, :exam_id, :theme_id
  json.url study_session_url(study_session, format: :json)
end
