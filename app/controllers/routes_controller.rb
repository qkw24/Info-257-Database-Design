class RoutesController < ApplicationController
  def new
    @route = Route.new
  end

  def create
    @route = Route.new(params[:route])
    @route.save!
    flash[:notice] = "#{@route.Name} was successfully created."
    redirect_to '/routes#index'
  end

  def index
    @routes = Route.all
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    flash[:notice] = "#{@route.Name} was successfully removed."
    redirect_to '/routes#index'
  end
end
