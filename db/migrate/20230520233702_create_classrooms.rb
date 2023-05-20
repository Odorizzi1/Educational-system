class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :room_number
      t.integer :student_count
      t.string :period
      t.string :teacher_id
      t.string :college_id

      t.timestamps
    end
  end
end
