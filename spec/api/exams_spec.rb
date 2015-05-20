require 'rails_helper'

context 'relations ' do

		before(:each){
			@school = School.create(name:"Universidad carlos 3",
								   website:"www.uc3m.com")
			@course = Course.create(name:"ingeneria informatica",
							       description:"la mejor carrera universitaria")
			@subject = Subject.create(name:"Fisica",
									 season:2015,
									 school_year:1,
									 description:"fisica es dificil",
									 teacher:"Fernando Moreno")
			@exams = Exam.create([
				{description:'parcial 1', date:Date.today},
				{description:'parcial 2', date:Date.today},
				{description:'parcial 3', date:Date.today}
					])
			@themes = Theme.create([
				{description:"Campos eléctricos",minutes:2*60},
				{description:"Potencial eléctrico.",minutes:2*60+40},
				{description:"Campos magnéticos.",minutes:4*60},
				{description:"Circuitos de corriente continua",minutes:5*60+45},
				{description:"Circuitos de corriente alterna.",minutes:2*60+30},
				{description:"Dispositivos electrónicos.",minutes:9*60+30},
				{description:"Familias lógicas.",minutes:4*60+30},
				{description:"Dispositivos fotónicos.",minutes:1*60+30}
			])
			
			@school.courses << @course
			@course.subjects << @subject

			@subject.exams = @exams
			@subject.themes = @themes

			@subject.exams.first.themes = @themes[0..2]
			@subject.exams.second.themes = @themes[3..5]
			@subject.exams.third.themes = @themes[6..7]
		}

		# it 'create exams and select themes' do
		# 	# binding.pry
		# 	post "/schools/#{@school.id}/courses/#{@course.id}/subjects/#{@subject.id}/exams/"
		# 	expect(@subject.exams.size).to eq 4
		# end
end

