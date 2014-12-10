class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:employee])
    @employee.role_id = params[:employee][:id]
    @es = EmployeeSchedule.create!(params[:employee_schedule])
    @employee.schedule_id = @es.id
    @employee.save!
    flash[:notice] = "#{@employee[:LastName]} was successfully created."
    redirect_to '/employees#index'
  end

  def new
    @employee = Employee.new
    @user_options = Role.all.map{|u| [ u.RoleName, u.id ] }
    @employee_schedule = EmployeeSchedule.new
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes!(employee_params)
    flash[:notice] = "#{@employee[:LastName]} was successfully edited."
    redirect_to '/employees#index'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "#{@employee[:LastName]} was successfully removed."
    redirect_to '/employees#index'
  end

  private

  def employee_params
    params.require(:employee).permit(:FirstName, :LastName, :MiddleName, :Pay, :Birthday, :Address, :Email)
  end

end
