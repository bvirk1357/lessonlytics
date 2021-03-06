class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :teacher_id
      t.string :password
      t.string :email
      t.timestamps
    end
  end
end
