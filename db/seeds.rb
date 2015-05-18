# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
school = School.create(name:"Universidad carlos 3",
					   website:"www.uc3m.com")
course = Course.create(name:"ingeneria informatica",
				       description:"la mejor carrera universitaria")
subject = Subject.create(name:"Fisica",
						 season:2015,
						 school_year:1,
						 description:"fisica es dificil",
						 teacher:"Fernando Moreno")
exams = Exam.create([
	{description:'parcial 1', date:Date.today},
	{description:'parcial 2', date:Date.today},
	{description:'parcial 3', date:Date.today}
		])
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

subject.exams = exams
subject.themes = themes

subject.exams.first.themes = themes[0..2]
subject.exams.second.themes = themes[3..5]
subject.exams.third.themes = themes[6..7]
