class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.references :college, type: :string, foreign_key: true

      t.timestamps
    end
  end
end
