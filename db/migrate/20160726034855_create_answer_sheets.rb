class CreateAnswerSheets < ActiveRecord::Migration
  def change
    create_table :answer_sheets do |t|
      t.integer :examination_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
