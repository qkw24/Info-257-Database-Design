class EmployeeSchedule < ActiveRecord::Base
  attr_accessible :endTime, :startTime, :bus_id
  belongs_to :employee
  has_many :buses
end
