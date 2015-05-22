class StudySession < ActiveRecord::Base
	belongs_to :exam
	belongs_to :theme

	def exam_theme
		exam_theme=[]
		exam_theme << self.exam
		exam_theme << self.theme
	end
end
