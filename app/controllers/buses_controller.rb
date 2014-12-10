class BusesController < ApplicationController
  def new
    @bus = Bus.new
    @user_options = Route.all.map{|u| [ u.Name, u.id ] }
  end

  def create
    @bus = Bus.new(params[:bus])
    @bus.route_id = params[:bus][:id]
    @bus.save!
    flash[:notice] = "Bus #{@bus.id} was successfully created."
    redirect_to '/buses#index'
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def index
    @buses = Bus.all
  end

  def update
    @bus = Bus.find(params[:id])
    @bus.update_attributes!(bus_params)
    flash[:notice] = "Bus #{@bus.id} was successfully edited."
    redirect_to '/buses#index'
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    flash[:notice] = "Bus #{@bus.id} was successfully removed."
    redirect_to '/buses#index'
  end

  private
  def bus_params
    params.require(:bus).permit(:type, :year, :capacity, :maintenance_status)
  end
end
