module SessionHelper

  def set_current_teacher(teacher)
    puts "Calling teacher helper!!"
    session[:teacher_id] = teacher.id
  end

  def set_current_student(student)
    puts "Calling student helper!!"
    session[:student_id] = student.id
  end

  def log_student_in(student, password)
    if student.password == password
      set_current_student(student)
    else
      redirect_to login_path
    end
  end

  def log_teacher_in(teacher, password)
    if teacher.password == password
      set_current_teacher(teacher)
    else
      redirect_to login_path
    end
  end

end
