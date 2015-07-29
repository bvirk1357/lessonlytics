class SessionController < ApplicationController

  include SessionHelper

  def signup

    if params[:usertype] == 'student'
      render 'student_signup'
    elsif params[:usertype] == 'teacher'
      render 'teacher_signup'
    else
      redirect_to root_path
    end

  end

  # Check Teacher OR Student
  def login

  end

  # Responds to the Student and Teacher login form submit
  def create
    puts "session#create: #{params}"
    @student = Student.find_by( username: params[:username])
    if @student
      log_student_in(@student, params[:password])
      return redirect_to student_path(@student)
    else
      puts "No Student find"
    end
    @teacher = Teacher.find_by( username: params[:username]);
    if @teacher
      log_teacher_in(@teacher, params[:password])
      return redirect_to teacher_path(@teacher)
    end

    redirect_to login_path

  end

end
