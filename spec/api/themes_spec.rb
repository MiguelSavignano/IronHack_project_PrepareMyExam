require 'rails_helper'

describe 'themes API endpoint' do
	
	context 'themes ' do

		let!(:themes_content){
			s = Subject.create(name:'Fisica')
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
			s.exams << e 
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