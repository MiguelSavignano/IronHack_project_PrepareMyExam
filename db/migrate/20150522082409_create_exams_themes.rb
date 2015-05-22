class CreateExamsThemes < ActiveRecord::Migration
  def change
    create_table :exams_themes do |t|
      t.belongs_to :exam, index: true
      t.belongs_to :theme, index: true
    end
  end
end
