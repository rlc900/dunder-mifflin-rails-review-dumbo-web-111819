class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create

    @employee = Employee.create(params.require(:employee).permit(:dog_id,:first_name,:last_name,:alias, :title, :office))

    redirect_to employee_path(@employee)
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
   @employee = Employee.find(params[:id])
   @employee.update(params.require(:employee).permit(:dog_id,:first_name,:last_name,:alias, :title, :office))
   redirect_to employees_path
  end
end
