class AddBusIdtoEmpSchedule < ActiveRecord::Migration
  def change
    add_column :employee_schedules, :bus_id, :integer
  end
end
