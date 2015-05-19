
# context 'themes ' do

# 		let!(:themes_content){
# 			school = School.create(name:"Universidad carlos 3",
# 								   website:"www.uc3m.com")
# 			course = Course.create(name:"ingeneria informatica",
# 							       description:"la mejor carrera universitaria")
# 			subject = Subject.create(name:"Fisica",
# 									 season:2015,
# 									 school_year:1,
# 									 description:"fisica es dificil",
# 									 teacher:"Fernando Moreno")
# 			exams = Exam.create([
# 				{description:'parcial 1', date:Date.today},
# 				{description:'parcial 2', date:Date.today},
# 				{description:'parcial 3', date:Date.today}
# 					])
# 			themes = Theme.create([
# 				{description:"Campos eléctricos",minutes:2*60},
# 				{description:"Potencial eléctrico.",minutes:2*60+40},
# 				{description:"Campos magnéticos.",minutes:4*60},
# 				{description:"Circuitos de corriente continua",minutes:5*60+45},
# 				{description:"Circuitos de corriente alterna.",minutes:2*60+30},
# 				{description:"Dispositivos electrónicos.",minutes:9*60+30},
# 				{description:"Familias lógicas.",minutes:4*60+30},
# 				{description:"Dispositivos fotónicos.",minutes:1*60+30}
# 			])
			
# 			school.courses << course
# 			course.subjects << subject

# 			subject.exams = exams
# 			subject.themes = themes

# 			subject.exams.first.themes = themes[0..2]
# 			subject.exams.second.themes = themes[3..5]
# 			subject.exams.third.themes = themes[6..7]

# 		}

# 		it ' bars_data themes' do
# 			get api_themes_path
# 			expect(JSON.parse(response.body).size).to eq 3
# 		end

		# it ' get bars_data content' do
		# 	get api_themes_path
		# 	expect(JSON.parse(response.body, {:symbolize_names => true})[:content].size).to eq 9
		# end

		# it 'get bars_data minutes' do
		# 	get api_themes_path
		# 	expect(JSON.parse(response.body, {:symbolize_names => true})[:minutes].size).to eq 9
		# end

		# it 'get bars_data sum minutes' do
		# 	get api_themes_path
		# 	expect(JSON.parse(response.body, {:symbolize_names => true})[:sum_minutes]).to eq 2095
		# end


