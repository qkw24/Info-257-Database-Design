class BusSchedulesController < ApplicationController
  def create
    @bus_schedule = BusSchedule.new(params[:bus_schedule])
    @bus_schedule.stop_id = params[:bus_schedule][:stop_id]
    @bus_schedule.route_id = params[:bus_schedule][:route_id]
    @bus_schedule.save!
    flash[:notice] = "The schedule was successfully created."
    redirect_to '/bus_schedules#index'
  end

  def new
    @bus_schedule = BusSchedule.new
    @stop_options = Stop.all.map{|u| [ u.name, u.id ] }
    @route_options = Route.all.map{|u| [ u.Name, u.id ] }
  end

  def update
  end

  def index
    @bus_schedules = BusSchedule.all
  end

  def destroy
  end
end
