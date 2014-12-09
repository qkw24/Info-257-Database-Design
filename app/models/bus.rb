class Bus < ActiveRecord::Base
  attr_accessible :capacity, :maintenance_status, :type, :year
  belongs_to :employee_schedule
  belongs_to :route
end
