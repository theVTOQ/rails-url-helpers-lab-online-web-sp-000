class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def toggle_activate
    @student = set_student
    #new_state = !@student.active
    #@student.active = new_state
    render "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
