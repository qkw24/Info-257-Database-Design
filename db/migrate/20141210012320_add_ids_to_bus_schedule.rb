class AddIdsToBusSchedule < ActiveRecord::Migration
  def change
    add_column :bus_schedules, :stop_id, :integer
    add_column :bus_schedules, :route_id, :integer
  end
end
