class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :type
      t.date :year
      t.integer :capacity
      t.string :maintenance_status

      t.timestamps
    end
  end
end
