class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
    @teacher.build_school
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to new_teacher_path
    else
      render :new
    end
  end

  private

    def teacher_params
      params.require(:teacher).permit(:name, school_attributes: [:name])
    end
end
