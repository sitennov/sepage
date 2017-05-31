class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.references :semester, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
