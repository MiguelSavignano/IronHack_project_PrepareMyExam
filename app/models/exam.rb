class Exam < ActiveRecord::Base
	has_many :study_sessions
	has_and_belongs_to_many :themes
	has_and_belongs_to_many :subjects


def sum_themes
	self.themes.reduce(0){|sum,theme|sum+theme.minutes}
end

end

