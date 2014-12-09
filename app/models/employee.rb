class Employee < ActiveRecord::Base
  attr_accessible :Address, :Birthday, :FirstName, :LastName, :MiddleName, :Pay, :Email
  has_many :roles
end
