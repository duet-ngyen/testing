class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.integer :teacher_id
      t.string :name

      t.timestamps null: false
    end
  end
end
