class CreateCoursevideos < ActiveRecord::Migration
  def change
    create_table :coursevideos do |t|
      t.belongs_to :course, index: true
      t.belongs_to :video, index: true
      t.float :video_sequence_id
      t.timestamps null: false
    end
  end
end
