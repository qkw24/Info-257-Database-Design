class BusSchedule < ActiveRecord::Base
  attr_accessible :arrival_time, :price, :stop_id, :route_id
  belongs_to :route
  belongs_to :stop
end
