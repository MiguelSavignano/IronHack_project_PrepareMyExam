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
				       description:"la mejor carrera universitaria")

uned_electronica = Course.create(name:"Ingeneria electronica",
				       description:"la mejor carrera universitaria")

urjc_informatica = Course.create(name:"Ingeneria informatica",
				       description:"la mejor carrera universitaria")

uc3m_informatica = Course.create(name:"Ingeneria informatica",
				       description:"la mejor carrera universitaria")

uc3m_derecho = Course.create(name:"Derecho",
				       description:"la mejor carrera universitaria")

uned_fisica = Subject.create(name:"Fisica",
						 season:2015,
						 school_year:1,
						 description:"fisica es dificil",
						 teacher:"Fernando Moreno")

uned_fisica_themes = Theme.create([
	{description:"Campos eléctricos",minutes:2*60},
	{description:"Potencial eléctrico.",minutes:2*60+40},
	{description:"Campos magnéticos.",minutes:4*60},
	{description:"Circuitos de corriente continua",minutes:5*60+45},
	{description:"Circuitos de corriente alterna.",minutes:2*60+30},
	{description:"Dispositivos electrónicos.",minutes:9*60+30},
	{description:"Familias lógicas.",minutes:4*60+30},
	{description:"Dispositivos fotónicos.",minutes:1*60+30}
])

uned_fisica_exams = Exam.create([
	{description:'parcial 1', date:Date.today},
	{description:'parcial 2', date:Date.today},
	{description:'parcial 3', date:Date.today}
		])
uned.courses << uned_informatica
uc3m.courses << uc3m_derecho
uned_informatica.subjects << uned_fisica

uned_fisica.exams = uned_fisica_exams
uned_fisica.themes = uned_fisica_themes

uned_fisica_exams.first.themes << uned_fisica_themes[0..2]
uned_fisica_exams.second.themes << uned_fisica_themes[3..5]
uned_fisica_exams.third.themes << uned_fisica_themes[6..7]

miguel = User.create(email:"migue.masx@gmail.com",
	        password:"miguels66",
	        password_confirmation:"miguels66")

miguel2 = User.create(email:"miguel@gmail.com",
	        password:"miguels66",
	        password_confirmation:"miguels66")

s1=StudySession.create(exam:uned_fisica_exams.first,theme:uned_fisica_exams.first.themes.first)
s2=StudySession.create(exam:uned_fisica_exams.first,theme:uned_fisica_exams.first.themes.first)
s3=StudySession.create(exam:uned_fisica_exams.first,theme:uned_fisica_exams.first.themes.first)
s4=StudySession.create(exam:uned_fisica_exams.first,theme:uned_fisica_exams.first.themes.first)

miguel.schools << uned
miguel.exams = uned_fisica_exams
miguel.study_sessions << s1 

miguel2.schools << uned 
miguel2.exams = uned_fisica_exams
miguel2.study_sessions << s2 
miguel2.study_sessions << s3 
miguel2.study_sessions << s4 
