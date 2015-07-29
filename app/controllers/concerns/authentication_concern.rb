module AuthenticationConcern

  extend ActiveSupport::Concern

  included do
    helper_method :current_teacher
    helper_method :current_student
  end

  # Set the current teacher
  def current_teacher
    return nil if session[:teacher_id].blank?
    @cur_teacher ||= Teacher.find(session[:teacher_id])
  end

  # Set the current student
  def current_student
    return nil if session[:student_id].blank?
    @cur_student ||= Student.find(session[:student_id])
  end


end
