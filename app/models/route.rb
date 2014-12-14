class Route < ActiveRecord::Base
  attr_accessible :Name, :destination
  has_many :buses
  has_many :stops, through: :bus_schedules
end
