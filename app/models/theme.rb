class Theme < ActiveRecord::Base
	belongs_to :subject
	has_many :exam_themes
	has_many :exams, through: :exam_themes
end

