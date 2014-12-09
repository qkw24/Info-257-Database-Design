class CreateEmployeeSchedules < ActiveRecord::Migration
  def change
    create_table :employee_schedules do |t|
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
