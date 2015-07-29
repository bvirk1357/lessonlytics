class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :subject
      t.string :properties_list
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
