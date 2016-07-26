class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :content
      t.integer :question_id
      t.boolean :is_correct
  
      t.timestamps null: false
    end
  end
end
