json.study_percent  @study_percent
json.study_sessions(@study_sessions) do |study_sessions|
  json.extract! study_sessions, :id, :minutes
end
