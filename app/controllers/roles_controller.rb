class RolesController < ApplicationController
  def create
    @role = Role.create!(params[:id])
  end

  def new
    @role = Role.new
  end

  def show
  end

  def index
    @role = Role.all
  end

  def destroy
  end
end
