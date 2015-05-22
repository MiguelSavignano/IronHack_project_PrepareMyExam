class CreateSchoolsUsers < ActiveRecord::Migration
  def change
    create_table :schools_users do |t|
      t.belongs_to :school, index: true
      t.belongs_to :user, index: true
    end
  end
end
