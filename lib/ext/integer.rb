class Integer
	def to_hours
		Time.at(self.minutes).utc.strftime("%H:%M")
	end
end