class StudentsController < ApplicationController
  #GET /students
  def index
    @students = Student.order(:name)
  end
  # Automatacclly renders the associated view:
  # app/views/students/index.html.erb

  # GET /students/:id => params[:id]
  def show
    @student = Student.find(params[:id])
  end
  # Automatacclly renders the associated view:
  # app/views/students/show.html.erb
end
