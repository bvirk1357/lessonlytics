class SessionController < ApplicationController

  def signup

    if params[:usertype] == 'student'
      render 'student_signup'
    elsif params[:usertype] == 'teacher'
      render 'teacher_signup'
    else
      redirect_to root_path
    end

  end

  def login
  end

end
