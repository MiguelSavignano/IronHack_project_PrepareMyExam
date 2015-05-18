require 'rails_helper'

describe 'themes API endpoint' do
	
	context 'themes ' do

		let!(:themes_content){
			school = School.create(name:"Universidad carlos 3",
								   website:"www.uc3m.com")
			course = Course.create(name:"ingeneria informatica",
							       description:"la mejor carrera universitaria")
			subject = Subject.create(name:"Fisica",
									 season:2015,
									 school_year:1,
									 description:"fisica es dificil",
									 teacher:"Fernando Moreno")
			exam1 = Exam.create(description:'parcial 1',
							   date:Date.today)
			exam2 = Exam.create(description:'parcial 2',
							   date:Date.today)
			exam3 = Exam.create(description:'parcial 3',
							   date:Date.today)
			themes = Theme.create([
				{description:"Campos eléctricos",minutes:2*60},
				{description:"Potencial eléctrico.",minutes:2*60+40},
				{description:"Campos magnéticos.",minutes:4*60},
				{description:"Circuitos de corriente continua",minutes:5*60+45},
				{description:"Circuitos de corriente alterna.",minutes:2*60+30},
				{description:"Dispositivos electrónicos.",minutes:9*60+30},
				{description:"Familias lógicas.",minutes:4*60+30},
				{description:"Dispositivos fotónicos.",minutes:1*60+30}
			])
			school.courses << course
			course.subjects << subject
			ExamTheme.create(exam_id:exam1.id,theme_id:themes[0].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam1.id,theme_id:themes[1].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam1.id,theme_id:themes[2].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam2.id,theme_id:themes[3].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam2.id,theme_id:themes[4].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam2.id,theme_id:themes[5].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam3.id,theme_id:themes[6].id,subject_id:subject.id)
			ExamTheme.create(exam_id:exam3.id,theme_id:themes[7].id,subject_id:subject.id)
		}
		
		it 'get bars_data themes' do
			get api_themes_path
			expect(JSON.parse(response.body).size).to eq 3
		end

		it ' get bars_data content' do
			get api_themes_path
			expect(JSON.parse(response.body, {:symbolize_names => true})[:content].size).to eq 9
		end

		it 'get bars_data minutes' do
			get api_themes_path
			expect(JSON.parse(response.body, {:symbolize_names => true})[:minutes].size).to eq 9
		end

		it 'get bars_data sum minutes' do
			get api_themes_path
			expect(JSON.parse(response.body, {:symbolize_names => true})[:sum_minutes]).to eq 2095
		end

		# it 'get bars_data sum minutes of all exams' do
		# 	get api_themes_path
		# 	expect(JSON.parse(response.body, {:symbolize_names => true})[:sum_minutes]).to eq 2095
		# end

	end

end