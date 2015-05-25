class Exam < ActiveRecord::Base

	has_many :study_sessions
	has_and_belongs_to_many :themes
	belongs_to :subject
	has_and_belongs_to_many :users


def sum_themes
	self.themes.reduce(0){|sum,theme|sum+theme.minutes}
end

def sum_study_sessions(current_user)
	StudySession.where(user:current_user,exam:self).reduce(0){|sum,x|sum+x.minutes}
end


end

