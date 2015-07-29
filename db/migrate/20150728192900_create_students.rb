class CreateStudents < ActiveRecord::Migration
  def change
     create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :student_id
      t.integer :age
      t.integer :zipcode
      t.string :password
      t.string :email
      t.timestamps null: false
    end
  end
end
