class RolesController < ApplicationController
  def create
    @role = Role.new(params[:role])
    @role.save!
    flash[:notice] = "#{@role.RoleName} was successfully created."
    redirect_to '/roles#index'
  end

  def new
    @role = Role.new
  end

  def show
    @role = Role.find(params[:id])
  end

  def index
    @roles = Role.all
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    flash[:notice] = "#{@role.RoleName} was successfully removed."
    redirect_to '/roles#index'
  end
end
