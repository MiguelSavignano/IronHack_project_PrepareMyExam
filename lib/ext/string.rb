class String
  def to_minutes
      hours=self[0..1].to_i
      minutes=self[3..4].to_i
      minutes = minutes + hours*60
  end
end