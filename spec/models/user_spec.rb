require 'rails_helper'

RSpec.describe User, type: :model do

	context 'first_exam' do
	  before(:each){
		@uned = School.create(name:"Universidad Nacional de Educación a Distancia",
		                     website:"www.uned.es")
		@uned_informatica = Course.create(name:"Ingeneria informatica",
					       description:"uned la mejor carrera universitaria")
		@uned_fisica = Subject.create(name:"Física",
							 season:2015,
							 school_year:1,
							 description:"uned informatica fisica es dificil",
							 teacher:"Marcos")
		@uned_fisica_exams = Exam.create([
			{description:'Parcial 1', date:"2015-06-15".to_date},
			{description:'Parcial 2', date:"2015-07-20".to_date},
			{description:'Parcial 3', date:"2015-08-15".to_date},
			{description:'Examen final', date:"2015-09-18".to_date}
		])
		@uned.courses << @uned_informatica
		@uned_informatica.subjects << @uned_fisica

		@uned_fisica.exams = @uned_fisica_exams

		@miguel = User.create(email:"migue.masx@gmail.com",
	  	        password:"miguels66",
	  	        password_confirmation:"miguels66")

	    @miguel.subjects << @uned_fisica
	  }

	  

	  it 'user first_exam' do
		expect(@miguel.first_exam).to eq @uned_fisica_exams.first
	  end
	end
end