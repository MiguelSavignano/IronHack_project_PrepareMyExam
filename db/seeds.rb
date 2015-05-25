# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
uc3m = School.create(name:"Universidad carlos 3",
					   website:"www.uc3m.es")

urjc = School.create(name:"Universidad Rey Juancarlos",
					   website:"www.urjc.es")

upm = School.create(name:"Universidad Politecnica",
					   website:"www.upm.es")

uned = School.create(name:"Universidad Nacional de Educación a Distancia",
					   website:"www.uned.es")


uned_informatica = Course.create(name:"Ingeneria informatica",
				       description:"uned la mejor carrera universitaria")

uned_electronica = Course.create(name:"Ingeneria electronica",
				       description:"uned la mejor carrera universitaria")

urjc_informatica = Course.create(name:"Ingeneria informatica",
				       description:" urjc la mejor carrera universitaria")

uc3m_informatica = Course.create(name:"Ingeneria informatica",
				       description:" uc3m la mejor carrera universitaria")

uc3m_derecho = Course.create(name:"Derecho",
				       description:"uc3m la mejor carrera universitaria")

uned_fisica = Subject.create(name:"Fisica",
						 season:2015,
						 school_year:1,
						 description:"uned informatica fisica es dificil",
						 teacher:"Marcos")
	
uned_quimica = Subject.create(name:"Quimica",
						 season:2015,
						 school_year:1,
						 description:"uned informatica fisica es dificil",
						 teacher:"Fernando Moreno")

uc3m_derecho_de_contratos = Subject.create(name:"Derecho de los Contratos",
						 season:2015,
						 school_year:2,
						 description:"uc3m derecho es facil",
						 teacher:"Fernando Moreno")

uned_fisica_themes = Theme.create([
	{description:"Campos eléctricos",minutes:2*60,number_chapter:1},
	{description:"Potencial eléctrico.",minutes:2*60+40,number_chapter:2},
	{description:"Campos magnéticos.",minutes:4*60,number_chapter:3},
	{description:"Circuitos de corriente continua",minutes:5*60+45,number_chapter:4},
	{description:"Circuitos de corriente alterna.",minutes:2*60+30,number_chapter:5},
	{description:"Dispositivos electrónicos.",minutes:9*60+30,number_chapter:6},
	{description:"Familias lógicas.",minutes:4*60+30,number_chapter:7},
	{description:"Dispositivos fotónicos.",minutes:1*60+30,number_chapter:8}
])

uned_quimica_themes = Theme.create([
	{description:"Campos eléctricos",minutes:2*60,number_chapter:1},
	{description:"Potencial eléctrico.",minutes:2*60+40,number_chapter:2},
	{description:"Campos magnéticos.",minutes:4*60,number_chapter:3},
	{description:"Circuitos de corriente continua",minutes:5*60+45,number_chapter:4},
	{description:"Circuitos de corriente alterna.",minutes:2*60+30,number_chapter:5},
	{description:"Dispositivos electrónicos.",minutes:9*60+30,number_chapter:6},
	{description:"Familias lógicas.",minutes:4*60+30,number_chapter:7},
	{description:"Dispositivos fotónicos.",minutes:1*60+30,number_chapter:8}
])

uned_fisica_exams = Exam.create([
	{description:'Parcial 1', date:"2015-06-15".to_date},
	{description:'Parcial 2', date:"2015-07-20".to_date},
	{description:'Parcial 3', date:"2015-08-15".to_date},
	{description:'Examen final', date:"2015-09-18".to_date}
		])

uned_quimica_exams = Exam.create([
	{description:'Parcial 1', date:"2015-06-10".to_date},
	{description:'Parcial 2', date:"2015-07-20".to_date},
	{description:'Parcial 3', date:"2015-08-28".to_date},
	{description:'Examen final', date:"2015-09-10".to_date}
		])
uned.courses << uned_informatica
uc3m.courses << uc3m_derecho

uned_informatica.subjects << uned_fisica
uned_informatica.subjects << uned_quimica

uned_fisica.exams = uned_fisica_exams
uned_fisica.themes = uned_fisica_themes
uned_quimica.exams = uned_quimica_exams
uned_quimica.themes = uned_quimica_themes

uned_fisica_exams.first.themes << uned_fisica_themes[0..2]
uned_fisica_exams.second.themes << uned_fisica_themes[3..5]
uned_fisica_exams.third.themes << uned_fisica_themes[6..7]
uned_fisica_exams[3].themes << uned_fisica_themes[0..7]

uned_quimica_exams.first.themes << uned_quimica_themes[0..2]
uned_quimica_exams.second.themes << uned_quimica_themes[3..5]
uned_quimica_exams.third.themes << uned_quimica_themes[6..7]
uned_quimica_exams[3].themes << uned_quimica_themes[0..7]

miguel = User.create(email:"migue.masx@gmail.com",
	        password:"miguels66",
	        password_confirmation:"miguels66")

miguel2 = User.create(email:"miguel@gmail.com",
	        password:"miguels66",
	        password_confirmation:"miguels66")

s1=StudySession.create(exam:uned_fisica_exams.first,
					   theme:uned_fisica_exams.first.themes.first,
					   date:"2015-05-10".to_date,minutes:45)
s2=StudySession.create(exam:uned_fisica_exams.first,
						theme:uned_fisica_exams.first.themes.first,
						date:"2015-05-11".to_date,minutes:120)
s3=StudySession.create(exam:uned_fisica_exams.first,
						theme:uned_fisica_exams.first.themes.first,
						date:"2015-05-12".to_date,minutes:100)
s4=StudySession.create(exam:uned_fisica_exams.first,
						theme:uned_fisica_exams.first.themes.first,
						date:"2015-05-13".to_date,minutes:30)

miguel.subjects << uned_fisica
miguel.subjects << uned_quimica
miguel.study_sessions << s1 
miguel.study_sessions << s2 
miguel.study_sessions << s3 
miguel.study_sessions << s4 

