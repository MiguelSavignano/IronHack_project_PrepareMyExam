class StudySession < ActiveRecord::Base
	belongs_to :exam
	belongs_to :user
	belongs_to :theme
    has_and_belongs_to_many :users

	def exam_theme
		exam_theme=[]
		exam_theme << self.exam
		exam_theme << self.theme
	end
end
