# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
e = Exam.create({description:'FUNDAMENTOS FÍSICOS
DE LA INFORMÁTICA', date:Date.today})
e.themes.create([
	{describe:"Campos eléctricos",minutes:2*60},
	{describe:"Potencial eléctrico.",minutes:2*60+40},
	{describe:"Campos magnéticos.",minutes:4*60},
	{describe:"Circuitos de corriente continua",minutes:5*60+45},
	{describe:"Circuitos de corriente alterna.",minutes:2*60+30},
	{describe:"Dispositivos electrónicos.",minutes:9*60+30},
	{describe:"Familias lógicas.",minutes:4*60+30},
	{describe:"Familias lógicas.",minutes:2*60+30},
	{describe:"Dispositivos fotónicos.",minutes:1*60+30}
])
