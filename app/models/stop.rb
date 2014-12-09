class Stop < ActiveRecord::Base
  attr_accessible :name
  has_many :routes, through: :bus_schedules
end
