class Role < ActiveRecord::Base
  attr_accessible :RoleName
  belongs_to :employee
end
