class EmployeeSchedule < ActiveRecord::Base
  attr_accessible :endTime, :startTime
  belongs_to :employee
  has_many :buses
end
