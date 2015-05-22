class CreateExamsUsers < ActiveRecord::Migration
  def change
    create_table :exams_users do |t|
	   t.belongs_to :exam, index: true
	   t.belongs_to :user, index: true 	
    end
  end
end
