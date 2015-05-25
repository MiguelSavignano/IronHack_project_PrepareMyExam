class CreateSubjectsUsers < ActiveRecord::Migration
  def change
    create_table :subjects_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :subject, index: true
    end
  end
end
