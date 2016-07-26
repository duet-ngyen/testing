class AddTeachIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :teacher_id, :integer
  end
end
