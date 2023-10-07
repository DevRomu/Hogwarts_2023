class StudentsController < ApplicationController
  #GET /students
  def index
  # The .includes removes our N+1 query problem
  # Accessing the student houses in a loop in the view
    @students = Student.includes(:house).order(:name)
  end
  # Automataclly renders the associated view:
  # app/views/students/index.html.erb

  # GET /students/:id => params[:id]
  def show
    @student = Student.includes(:house).find(params[:id])
  end
  # Automatacclly renders the associated view:
  # app/views/students/show.html.erb
end
