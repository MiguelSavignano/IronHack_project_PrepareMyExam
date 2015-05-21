class Exam < ActiveRecord::Base
	belongs_to :subject
	has_many :exam_themes
	has_many :themes, through: :exam_themes
	has_many :study_sessions

def sum_themes
	self.themes.reduce(0){|sum,theme|sum+theme.minutes}
end

end

