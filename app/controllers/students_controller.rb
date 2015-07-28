class StudentsController < ApplicationController

  def create
    puts "Hi Student: params: #{student_params}"
  end


private
  def student_params
    params.require(:student).permit(:firstname, :lastname, :username, :password, :email)
  end

end
