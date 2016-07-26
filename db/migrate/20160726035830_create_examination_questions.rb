class CreateExaminationQuestions < ActiveRecord::Migration
  def change
    create_table :examination_questions do |t|
      t.integer :examination_id
      t.integer :question_id
      t.integer :teacher_id
      
      t.timestamps null: false
    end
  end
end
