class EmployeeSchedulesController < ApplicationController
  def new
    @employee_schedule = EmployeeSchedule.new
  end

  def create

  end

  def index
    @employee_schedules = EmployeeSchedule.all
    @employees = Employee.all
  end

  def update
  end
end
