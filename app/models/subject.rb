class Subject < ActiveRecord::Base
	belongs_to :course
	has_many :exam_themes
end
