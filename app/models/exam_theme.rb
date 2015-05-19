class ExamTheme < ActiveRecord::Base
	belongs_to :theme
	belongs_to :exam
end
