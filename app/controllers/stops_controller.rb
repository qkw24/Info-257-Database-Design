class StopsController < ApplicationController
  def create
    @stop = Stop.new(params[:stop])
    @stop.save!
    flash[:notice] = "#{@stop.name} was successfully created."
    redirect_to '/stops#index'
  end

  def new
    @stop = Stop.new
  end

  def index
    @stops = Stop.all
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "#{@stop.name} was successfully removed."
    redirect_to '/stops#index'
  end
end
