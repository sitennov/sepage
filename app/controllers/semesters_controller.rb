class SemestersController < ApplicationController
  def new
    @semester = Semester.new
  end

  def show
    @semester = Semester.find(params[:id])
  end

  def create
    @semester = Semester.create(semester_params)
    if @semester.errors.empty?
      redirect_to @semester
    else
      render :new
    end
  end

  private

  def semester_params
    params.require(:semester).permit(:name, :fullname, :current)
  end
end
