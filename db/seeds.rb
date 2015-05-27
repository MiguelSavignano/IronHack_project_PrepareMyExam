# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
uc3m = School.create(name:"Universidad Carlos III",
					   website:"www.uc3m.es")

urjc = School.create(name:"Universidad Rey Juan Carlos",
					   website:"www.urjc.es")

upm = School.create(name:"Universidad Politécnica de Madrid",
					   website:"www.upm.es")

uned = School.create(name:"Universidad Nacional de Educación a Distancia",
					   website:"www.uned.es")



#Courses UNED
#Ingenierias
uned_informatica = Course.create(name:"Ingeneria informatica",
				       description:"uned la mejor carrera universitaria")

uned_electronica = Course.create(name:"Ingeneria Electrónica",
				       description:"uned la mejor carrera universitaria")
               
uned_mecanica = Course.create(name:"Ingeneria Mecánica",
				       description:"uned la mejor carrera universitaria")
               
uned_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"uned la mejor carrera universitaria")
               
uned_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"uned la mejor carrera universitaria")
               
#Csociales               
uned_edsoc = Course.create(name:"Educación social",
				       description:"uned la mejor carrera universitaria")

#Humanidades      

               

#Courses UC3M
#Ingenierias
uc3m_electronica = Course.create(name:"Ingeneria Electrónica",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_mecanica = Course.create(name:"Ingeneria Mecánica",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"uc3m la mejor carrera universitaria")
#Csociales
uc3m_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"uc3m la mejor carrera universitaria")
#Humanidades
uc3m_turismo = Course.create(name:"Turismo",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_economia = Course.create(name:"Economía",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_derecho = Course.create(name:"Derecho",
				       description:"uc3m la mejor carrera universitaria")
               
uc3m_periodismo = Course.create(name:"Periodismo",
				       description:"uc3m la mejor carrera universitaria")
               
#Courses UPM
#Ingenierias
upm_electronica = Course.create(name:"Ingeneria Electrónica",
				       description:"upm la mejor carrera universitaria")
               
upm_mecanica = Course.create(name:"Ingeneria Mecánica",
				       description:"upm la mejor carrera universitaria")
               
upm_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"upm la mejor carrera universitaria")
               
upm_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"upm la mejor carrera universitaria")



#Courses URJC
#Ingenierias
urjc_electronica = Course.create(name:"Ingeneria Electrónica",
				       description:"urjc la mejor carrera universitaria")
               
urjc_mecanica = Course.create(name:"Ingeneria Mecánica",
				       description:"urjc la mejor carrera universitaria")
               
urjc_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"urjc la mejor carrera universitaria")
               
urjc_indus_autom = Course.create(name:"Ingeniería industrial y automática",
				       description:"urjc la mejor carrera universitaria")
#Csociales
urjc_turismo =  Course.create(name:"Turismo",
				       description:"urjc la mejor carrera universitaria")
               
urjc_turismo =  Course.create(name:"Economía",
				       description:"urjc la mejor carrera universitaria")
               
urjc_derecho =  Course.create(name:"Derecho",
				       description:"urjc la mejor carrera universitaria")
               
urjc_periodismo = Course.create(name:"Periodismo",
				       description:"urjc la mejor carrera universitaria")

               
               
               
               
#Asignaturas UNED
#Comuines
uned_estadistica = Subject.create(name:"Estadistica",
						 season:2015,
						 school_year:1,
						 description:"Analizar la realidad",
						 teacher:"Marcos")
             
             
#Comunes ingeniería           
uned_fisica = Subject.create(name:"Física",
						 season:2015,
						 school_year:1,
						 description:"uned informatica fisica es dificil",
						 teacher:"Marcos")
	
uned_quimica = Subject.create(name:"Quimica",
						 season:2015,
						 school_year:1,
						 description:"Química",
						 teacher:"Fernando Moreno")

uned_campos = Subject.create(name:"Campos y ondas",
						 season:2015,
						 school_year:1,
						 description:"Campos y ondas mola",
						 teacher:"Fernando Alonso")
             
uned_elec_dig = Subject.create(name:"Electrónica digital",
						 season:2015,
						 school_year:1,
						 description:"La electrónica digital es el presente",
						 teacher:"Pepe")

#Informática
uned_comp_arc = Subject.create(name:"Arquitectura de computadores",
						 season:2015,
						 school_year:1,
						 description:"Descubrir cómo funciona un ordenador",
						 teacher:"Pepe")

#Derecho             
uned_derecho_de_contratos = Subject.create(name:"Derecho de los Contratos",
						 season:2015,
						 school_year:2,
						 description:"Por la justicia",
						 teacher:"Fernando Moreno")


uned_derecho_procesal = Subject.create(name:"Derecho procesal penal",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Paco García")
  
#Economia  
uned_public_econ = Subject.create(name:"Economía pública",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Paco García")
             
uned_teoria_micro = Subject.create(name:"Teoría microeconómica",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Miguel García")
             
uned_econ_aplicada = Subject.create(name:"Economía aplicada",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Pedro Savignano")
             

             
#Asignaturas UC3M
#Comuines
uc3m_estadistica = Subject.create(name:"Estadistica",
						 season:2015,
						 school_year:1,
						 description:"Analizar la realidad",
						 teacher:"Marcos")
             
             
#Comunes ingeniería           
uc3m_fisica = Subject.create(name:"Física",
						 season:2015,
						 school_year:1,
						 description:"uc3m informatica fisica es dificil",
						 teacher:"Marcos")
	
uc3m_quimica = Subject.create(name:"Quimica",
						 season:2015,
						 school_year:1,
						 description:"Química",
						 teacher:"Fernando Moreno")

uc3m_campos = Subject.create(name:"Campos y ondas",
						 season:2015,
						 school_year:1,
						 description:"Campos y ondas mola",
						 teacher:"Fernando Alonso")
             
uc3m_elec_dig = Subject.create(name:"Electrónica digital",
						 season:2015,
						 school_year:1,
						 description:"La electrónica digital es el presente",
						 teacher:"Pepe")

#Informática
uc3m_comp_arc = Subject.create(name:"Arquitectura de computadores",
						 season:2015,
						 school_year:1,
						 description:"Descubrir cómo funciona un ordenador",
						 teacher:"Pepe")

#Derecho             
uc3m_derecho_de_contratos = Subject.create(name:"Derecho de los Contratos",
						 season:2015,
						 school_year:2,
						 description:"Por la justicia",
						 teacher:"Fernando Moreno")


uc3m_derecho_procesal = Subject.create(name:"Derecho procesal penal",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Paco García")
  
#Economia  
uc3m_public_econ = Subject.create(name:"Economía pública",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Paco García")
             
uc3m_teoria_micro = Subject.create(name:"Teoría microeconómica",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Miguel García")
             
uc3m_econ_aplicada = Subject.create(name:"Economía aplicada",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Pedro Savignano")
             
#Asignaturas UPM         
      #Comuines
upm_estadistica = Subject.create(name:"Estadistica",
						 season:2015,
						 school_year:1,
						 description:"Analizar la realidad",
						 teacher:"Marcos")
             
             
#Comunes ingeniería           
upm_fisica = Subject.create(name:"Física",
						 season:2015,
						 school_year:1,
						 description:"upm informatica fisica es dificil",
						 teacher:"Marcos")
	
upm_quimica = Subject.create(name:"Quimica",
						 season:2015,
						 school_year:1,
						 description:"Química",
						 teacher:"Fernando Moreno")

upm_campos = Subject.create(name:"Campos y ondas",
						 season:2015,
						 school_year:1,
						 description:"Campos y ondas mola",
						 teacher:"Fernando Alonso")
             
upm_elec_dig = Subject.create(name:"Electrónica digital",
						 season:2015,
						 school_year:1,
						 description:"La electrónica digital es el presente",
						 teacher:"Pepe")

#Informática
upm_comp_arc = Subject.create(name:"Arquitectura de computadores",
						 season:2015,
						 school_year:1,
						 description:"Descubrir cómo funciona un ordenador",
						 teacher:"Pepe")


#Asignaturas URJC
#Comuines
urjc_estadistica = Subject.create(name:"Estadistica",
						 season:2015,
						 school_year:1,
						 description:"Analizar la realidad",
						 teacher:"Marcos")
             
             
#Comunes ingeniería           
urjc_fisica = Subject.create(name:"Física",
						 season:2015,
						 school_year:1,
						 description:"urjc informatica fisica es dificil",
						 teacher:"Marcos")
	
urjc_quimica = Subject.create(name:"Quimica",
						 season:2015,
						 school_year:1,
						 description:"Química",
						 teacher:"Fernando Moreno")

urjc_campos = Subject.create(name:"Campos y ondas",
						 season:2015,
						 school_year:1,
						 description:"Campos y ondas mola",
						 teacher:"Fernando Alonso")
             
urjc_elec_dig = Subject.create(name:"Electrónica digital",
						 season:2015,
						 school_year:1,
						 description:"La electrónica digital es el presente",
						 teacher:"Pepe")

#Informática
urjc_comp_arc = Subject.create(name:"Arquitectura de computadores",
						 season:2015,
						 school_year:1,
						 description:"Descubrir cómo funciona un ordenador",
						 teacher:"Pepe")

#Derecho             
urjc_derecho_de_contratos = Subject.create(name:"Derecho de los Contratos",
						 season:2015,
						 school_year:2,
						 description:"Por la justicia",
						 teacher:"Fernando Moreno")


urjc_derecho_procesal = Subject.create(name:"Derecho procesal penal",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Paco García")
  
#Economia  
urjc_public_econ = Subject.create(name:"Economía pública",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Paco García")
             
urjc_teoria_micro = Subject.create(name:"Teoría microeconómica",
						 season:2015,
						 school_year:2,
						 description:"Esencial",
						 teacher:"Miguel García")
             
urjc_econ_aplicada = Subject.create(name:"Economía aplicada",
						 season:2015,
						 school_year:3,
						 description:"Esencial",
						 teacher:"Pedro Savignano")
	
             
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

