class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :type
      t.string :answer_list # CSV format
      t.string :correct_answer
      t.integer :avg_time
      t.integer :test_taker_count
      t.belongs_to :video, index: true
      t.timestamps
    end
  end
end
