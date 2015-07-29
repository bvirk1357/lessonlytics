class CreateCoursestudents < ActiveRecord::Migration
  def change
    create_table :coursestudents do |t|
      t.belongs_to :course, index: true
      t.belongs_to :student, index: true
      t.string :status
      t.timestamps null: false
    end
  end
end
