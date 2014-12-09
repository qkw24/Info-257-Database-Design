class CreateBusSchedules < ActiveRecord::Migration
  def change
    create_table :bus_schedules do |t|
      t.float :price
      t.time :arrival_time

      t.timestamps
    end
  end
end
