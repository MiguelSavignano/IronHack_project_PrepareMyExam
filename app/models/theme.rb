class Theme < ActiveRecord::Base
	has_many :exam_themes
	has_many :exams, through: :exam_themes
end

