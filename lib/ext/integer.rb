class Integer
	def to_hours
		Time.at(self.minutes).utc.strftime("%H h and %M m")
	end
end