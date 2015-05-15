# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e = Exam.create({description:'parcial 1', date:Date.today})
e.themes.create([
	{content:"Campos eléctricos",minutes:2*60},
	{content:"Potencial eléctrico.",minutes:2*60+40},
	{content:"Campos magnéticos.",minutes:4*60},
	{content:"Circuitos de corriente continua",minutes:5*60+45},
	{content:"Circuitos de corriente alterna.",minutes:2*60+30},
	{content:"Dispositivos electrónicos.",minutes:9*60+30},
	{content:"Familias lógicas.",minutes:4*60+30},
	{content:"Familias lógicas.",minutes:2*60+30},
	{content:"Dispositivos fotónicos.",minutes:1*60+30}
])
s = Subject.create(name:'Fisica')
s.exams << e
