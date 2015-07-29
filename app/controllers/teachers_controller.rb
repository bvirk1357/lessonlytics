class TeachersController < ApplicationController

  include SessionHelper
  include TeachersHelper

  def create
    puts "Hi Teacher: params: #{teacher_params}"
    @teacher = Teacher.create(first_name: params[:firstname], last_name: params[:lastname], username: params[:username], password: params[:password]);
    # session[:cur_teacher_id] = @cur_teacher.id
    set_current_teacher(@teacher)
    redirect_to teacher_path(@teacher)
  end


  def show
    puts "Here!!! show!!"
    @teacher = current_teacher
  end


private
  def teacher_params
    params.require(:teacher).permit(:firstname, :lastname, :username, :password, :email)
  end

end
