class StudentsController < ApplicationController

  include SessionHelper
  include StudentsHelper

  def create
    puts "Hi student: params: #{student_params}"
    @student = Student.create(first_name: params[:firstname], last_name: params[:lastname], username: params[:username], password: params[:password]);
    set_current_student(@student)
    redirect_to student_path(@student)
  end


  def show
    puts "Here!!! student show!!"
    @student = current_student
  end


private
  def student_params
    params.require(:student).permit(:firstname, :lastname, :username, :password, :email)
  end

end
