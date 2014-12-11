class Bus < ActiveRecord::Base
  attr_accessible :capacity, :maintenance_status, :bus_type, :year, :route_id, :license_plate
  belongs_to :employee_schedule
  belongs_to :route
end
