class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
