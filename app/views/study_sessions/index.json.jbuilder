json.array!(@study_sessions) do |study_session|
  json.extract! study_session, :id, :date, :minutes
end
