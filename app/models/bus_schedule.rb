class BusSchedule < ActiveRecord::Base
  attr_accessible :arrival_time, :price
  belongs_to :route
  belongs_to :stop
end
