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
