class AddScheduleIDtoEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :schedule_id, :integer
  end

end
