class Exam < ActiveRecord::Base
	belongs_to :subject
	has_many :exam_themes
	has_many :study_sessions
	has_many :themes, through: :exam_themes
end
